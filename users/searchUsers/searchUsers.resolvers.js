import client from "../../client";

export default {
  Query: {
    searchUsers: async (_, { keyword, lastId }) =>
      await client.user.findMany({
        where: {
          OR: [
            { username: { startsWith: keyword.toLowerCase() } },
            { firstName: { startsWith: keyword.toLowerCase() } },
            { lastName: { startsWith: keyword.toLowerCase() } },
          ],
        },
        take: 5,
        skip: lastId ? 1 : 0,
        ...(lastId && { cursor: { id: lastId } }),
      }),
  },
};
