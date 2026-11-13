-- ============================================================================
-- STUDYHUB DATABASE SCHEMA (Chạy toàn bộ đoạn này trong Supabase SQL Editor)
-- ============================================================================

-- 1. Bảng thành viên & điểm đóng góp
CREATE TABLE IF NOT EXISTS public.profiles (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  username TEXT UNIQUE NOT NULL,
  display_name TEXT NOT NULL,
  points INT DEFAULT 0,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 2. Bảng bài giảng / kho tri thức
CREATE TABLE IF NOT EXISTS public.lessons (
  id TEXT PRIMARY KEY,
  subject TEXT NOT NULL,
  title TEXT NOT NULL,
  tags JSONB DEFAULT '[]'::jsonb,
  wiki_keyword TEXT,
  content_md TEXT NOT NULL,
  author_name TEXT NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 3. Bảng ngân hàng câu hỏi trắc nghiệm
CREATE TABLE IF NOT EXISTS public.questions (
  id TEXT PRIMARY KEY,
  lesson_id TEXT REFERENCES public.lessons(id) ON DELETE CASCADE,
  question TEXT NOT NULL,
  options JSONB NOT NULL,
  correct_index INT NOT NULL,
  explanation TEXT,
  author_name TEXT NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 4. Bảng thảo luận & ghi chú chung dưới mỗi bài học
CREATE TABLE IF NOT EXISTS public.comments (
  id TEXT PRIMARY KEY,
  lesson_id TEXT REFERENCES public.lessons(id) ON DELETE CASCADE,
  author_name TEXT NOT NULL,
  content TEXT NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Bật Row Level Security (RLS) và cho phép nhóm truy cập đọc/ghi
ALTER TABLE public.profiles ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.lessons ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.questions ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.comments ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Allow public read/write profiles" ON public.profiles FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "Allow public read/write lessons" ON public.lessons FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "Allow public read/write questions" ON public.questions FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "Allow public read/write comments" ON public.comments FOR ALL USING (true) WITH CHECK (true);
