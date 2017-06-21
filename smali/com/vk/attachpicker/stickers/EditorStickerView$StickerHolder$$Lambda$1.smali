.class final synthetic Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;

.field private final arg$2:Lcom/vk/attachpicker/stickers/EditorStickerView$Listener;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;Lcom/vk/attachpicker/stickers/EditorStickerView$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder$$Lambda$1;->arg$1:Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;

    iput-object p2, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder$$Lambda$1;->arg$2:Lcom/vk/attachpicker/stickers/EditorStickerView$Listener;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;Lcom/vk/attachpicker/stickers/EditorStickerView$Listener;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder$$Lambda$1;-><init>(Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;Lcom/vk/attachpicker/stickers/EditorStickerView$Listener;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder$$Lambda$1;->arg$1:Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;

    iget-object v1, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder$$Lambda$1;->arg$2:Lcom/vk/attachpicker/stickers/EditorStickerView$Listener;

    invoke-virtual {v0, v1, p1}, Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;->lambda$new$140(Lcom/vk/attachpicker/stickers/EditorStickerView$Listener;Landroid/view/View;)V

    return-void
.end method
