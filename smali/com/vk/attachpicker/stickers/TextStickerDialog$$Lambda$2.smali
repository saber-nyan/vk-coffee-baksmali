.class final synthetic Lcom/vk/attachpicker/stickers/TextStickerDialog$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vk/attachpicker/widget/ColorSelectorView$OnColorSelectedListener;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/stickers/TextStickerDialog;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/stickers/TextStickerDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog$$Lambda$2;->arg$1:Lcom/vk/attachpicker/stickers/TextStickerDialog;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/stickers/TextStickerDialog;)Lcom/vk/attachpicker/widget/ColorSelectorView$OnColorSelectedListener;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/stickers/TextStickerDialog$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/stickers/TextStickerDialog$$Lambda$2;-><init>(Lcom/vk/attachpicker/stickers/TextStickerDialog;)V

    return-object v0
.end method


# virtual methods
.method public onColorSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog$$Lambda$2;->arg$1:Lcom/vk/attachpicker/stickers/TextStickerDialog;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/stickers/TextStickerDialog;->lambda$new$145(I)V

    return-void
.end method
