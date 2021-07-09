/*
  Warnings:

  - You are about to drop the column `rommId` on the `Message` table. All the data in the column will be lost.
  - Added the required column `roomId` to the `Message` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Message" DROP CONSTRAINT "Message_rommId_fkey";

-- AlterTable
ALTER TABLE "Message" DROP COLUMN "rommId",
ADD COLUMN     "roomId" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "Message" ADD FOREIGN KEY ("roomId") REFERENCES "Room"("id") ON DELETE CASCADE ON UPDATE CASCADE;
