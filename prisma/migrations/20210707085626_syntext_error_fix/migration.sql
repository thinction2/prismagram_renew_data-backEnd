-- DropForeignKey
ALTER TABLE "Like" DROP CONSTRAINT "Like_photoId_fkey1";

-- AddForeignKey
ALTER TABLE "Like" ADD FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;
