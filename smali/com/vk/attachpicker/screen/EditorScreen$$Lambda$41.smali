.class final synthetic Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$41;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vk/attachpicker/stickers/TextStickerDialog$TextStickerDialogCallback;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/screen/EditorScreen;

.field private final arg$2:Lcom/vk/attachpicker/stickers/TextSticker;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/screen/EditorScreen;Lcom/vk/attachpicker/stickers/TextSticker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$41;->arg$1:Lcom/vk/attachpicker/screen/EditorScreen;

    iput-object p2, p0, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$41;->arg$2:Lcom/vk/attachpicker/stickers/TextSticker;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;Lcom/vk/attachpicker/stickers/TextSticker;)Lcom/vk/attachpicker/stickers/TextStickerDialog$TextStickerDialogCallback;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$41;

    invoke-direct {v0, p0, p1}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$41;-><init>(Lcom/vk/attachpicker/screen/EditorScreen;Lcom/vk/attachpicker/stickers/TextSticker;)V

    return-object v0
.end method


# virtual methods
.method public onApply(Ljava/lang/String;ILcom/vk/attachpicker/stickers/StickerFont;)V
    .locals 2

    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$41;->arg$1:Lcom/vk/attachpicker/screen/EditorScreen;

    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$41;->arg$2:Lcom/vk/attachpicker/stickers/TextSticker;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/vk/attachpicker/screen/EditorScreen;->lambda$null$100(Lcom/vk/attachpicker/stickers/TextSticker;Ljava/lang/String;ILcom/vk/attachpicker/stickers/StickerFont;)V

    return-void
.end method
