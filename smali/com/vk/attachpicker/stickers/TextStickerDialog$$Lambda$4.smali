.class final synthetic Lcom/vk/attachpicker/stickers/TextStickerDialog$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/stickers/TextStickerDialog;

.field private final arg$2:Lcom/vk/attachpicker/stickers/TextStickerDialog$TextStickerDialogCallback;

.field private final arg$3:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/stickers/TextStickerDialog;Lcom/vk/attachpicker/stickers/TextStickerDialog$TextStickerDialogCallback;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog$$Lambda$4;->arg$1:Lcom/vk/attachpicker/stickers/TextStickerDialog;

    iput-object p2, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog$$Lambda$4;->arg$2:Lcom/vk/attachpicker/stickers/TextStickerDialog$TextStickerDialogCallback;

    iput-object p3, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog$$Lambda$4;->arg$3:Landroid/content/Context;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/stickers/TextStickerDialog;Lcom/vk/attachpicker/stickers/TextStickerDialog$TextStickerDialogCallback;Landroid/content/Context;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/stickers/TextStickerDialog$$Lambda$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/vk/attachpicker/stickers/TextStickerDialog$$Lambda$4;-><init>(Lcom/vk/attachpicker/stickers/TextStickerDialog;Lcom/vk/attachpicker/stickers/TextStickerDialog$TextStickerDialogCallback;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog$$Lambda$4;->arg$1:Lcom/vk/attachpicker/stickers/TextStickerDialog;

    iget-object v1, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog$$Lambda$4;->arg$2:Lcom/vk/attachpicker/stickers/TextStickerDialog$TextStickerDialogCallback;

    iget-object v2, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog$$Lambda$4;->arg$3:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, p1}, Lcom/vk/attachpicker/stickers/TextStickerDialog;->lambda$new$147(Lcom/vk/attachpicker/stickers/TextStickerDialog$TextStickerDialogCallback;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
