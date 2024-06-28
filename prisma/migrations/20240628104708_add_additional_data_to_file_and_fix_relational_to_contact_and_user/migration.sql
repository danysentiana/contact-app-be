/*
  Warnings:

  - A unique constraint covering the columns `[username]` on the table `files` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `file_name` to the `files` table without a default value. This is not possible if the table is not empty.
  - Added the required column `username` to the `files` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "files" ADD COLUMN     "file_name" VARCHAR(100) NOT NULL,
ADD COLUMN     "username" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "files_username_key" ON "files"("username");

-- AddForeignKey
ALTER TABLE "files" ADD CONSTRAINT "files_username_fkey" FOREIGN KEY ("username") REFERENCES "users"("username") ON DELETE RESTRICT ON UPDATE CASCADE;
