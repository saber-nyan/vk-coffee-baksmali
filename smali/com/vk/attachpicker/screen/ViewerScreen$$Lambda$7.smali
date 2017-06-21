.class final synthetic Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/screen/ViewerScreen;

.field private final arg$2:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

.field private final arg$3:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/screen/ViewerScreen;Lcom/vk/attachpicker/mediastore/MediaStoreEntry;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$7;->arg$1:Lcom/vk/attachpicker/screen/ViewerScreen;

    iput-object p2, p0, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$7;->arg$2:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    iput-object p3, p0, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$7;->arg$3:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/screen/ViewerScreen;Lcom/vk/attachpicker/mediastore/MediaStoreEntry;Landroid/graphics/Bitmap;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$7;-><init>(Lcom/vk/attachpicker/screen/ViewerScreen;Lcom/vk/attachpicker/mediastore/MediaStoreEntry;Landroid/graphics/Bitmap;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$7;->arg$1:Lcom/vk/attachpicker/screen/ViewerScreen;

    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$7;->arg$2:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$7;->arg$3:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/vk/attachpicker/screen/ViewerScreen;->lambda$null$35(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;Landroid/graphics/Bitmap;)V

    return-void
.end method
