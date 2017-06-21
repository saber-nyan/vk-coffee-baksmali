.class final synthetic Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder$$Lambda$1;->arg$1:Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder$$Lambda$1;-><init>(Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder$$Lambda$1;->arg$1:Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder;->lambda$new$142(Landroid/view/View;)V

    return-void
.end method
