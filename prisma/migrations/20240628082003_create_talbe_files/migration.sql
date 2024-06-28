-- CreateTable
CREATE TABLE "files" (
    "id" SERIAL NOT NULL,
    "file_content" TEXT NOT NULL,
    "file_extension" VARCHAR(7) NOT NULL,

    CONSTRAINT "files_pkey" PRIMARY KEY ("id")
);
