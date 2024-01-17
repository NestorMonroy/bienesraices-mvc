import express from "express"

const router = express.Router();

router.get('/', function (req, res) {
    res.json({msg:'hola'})
})
router.post('/', function (req, res) {
    res.json({msg: 'hola' })
})

export default router
