import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();
export default async function handler(req, res) {
    if (req.method === 'POST') {
        const { mensagem } = req.body;
        const user = await prisma.chat.create({
            data: { mensagem }
        });
        return res.status(200).json(user)
    }
    if (req.method === 'GET') {
        const chats = await prisma.chat.findMany();
        return res.status(200).json(chats)
    }
    return req.status(405).json({'message': 'Metódo não existe.'});
}
