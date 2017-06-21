.class final synthetic Lcom/vk/attachpicker/stickers/TextStickerDialog$1$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/stickers/TextStickerDialog$1;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/stickers/TextStickerDialog$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog$1$$Lambda$1;->arg$1:Lcom/vk/attachpicker/stickers/TextStickerDialog$1;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/stickers/TextStickerDialog$1;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/stickers/TextStickerDialog$1$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/stickers/TextStickerDialog$1$$Lambda$1;-><init>(Lcom/vk/attachpicker/stickers/TextStickerDialog$1;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog$1$$Lambda$1;->arg$1:Lcom/vk/attachpicker/stickers/TextStickerDialog$1;

    invoke-virtual {v0}, Lcom/vk/attachpicker/stickers/TextStickerDialog$1;->lambda$onPreDraw$143()V

    return-void
.end method
