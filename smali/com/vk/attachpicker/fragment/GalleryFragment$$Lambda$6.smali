.class final synthetic Lcom/vk/attachpicker/fragment/GalleryFragment$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/fragment/GalleryFragment;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/fragment/GalleryFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/fragment/GalleryFragment$$Lambda$6;->arg$1:Lcom/vk/attachpicker/fragment/GalleryFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/fragment/GalleryFragment;)Landroid/media/MediaScannerConnection$OnScanCompletedListener;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/fragment/GalleryFragment$$Lambda$6;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/fragment/GalleryFragment$$Lambda$6;-><init>(Lcom/vk/attachpicker/fragment/GalleryFragment;)V

    return-object v0
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment$$Lambda$6;->arg$1:Lcom/vk/attachpicker/fragment/GalleryFragment;

    invoke-virtual {v0, p1, p2}, Lcom/vk/attachpicker/fragment/GalleryFragment;->lambda$onActivityResult$28(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method
