.class final synthetic Lcom/vk/attachpicker/fragment/GalleryFragment$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vk/attachpicker/mediastore/MediaStoreController$MediaStoreCallback;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/fragment/GalleryFragment;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/fragment/GalleryFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/fragment/GalleryFragment$$Lambda$5;->arg$1:Lcom/vk/attachpicker/fragment/GalleryFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/fragment/GalleryFragment;)Lcom/vk/attachpicker/mediastore/MediaStoreController$MediaStoreCallback;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/fragment/GalleryFragment$$Lambda$5;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/fragment/GalleryFragment$$Lambda$5;-><init>(Lcom/vk/attachpicker/fragment/GalleryFragment;)V

    return-object v0
.end method


# virtual methods
.method public onLoaded(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment$$Lambda$5;->arg$1:Lcom/vk/attachpicker/fragment/GalleryFragment;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/fragment/GalleryFragment;->lambda$loadMediastore$27(Ljava/util/ArrayList;)V

    return-void
.end method
