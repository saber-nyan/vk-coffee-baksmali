.class final synthetic Lcom/vk/attachpicker/fragment/GalleryFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vk/attachpicker/events/NotificationListener;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/fragment/GalleryFragment;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/fragment/GalleryFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/fragment/GalleryFragment$$Lambda$1;->arg$1:Lcom/vk/attachpicker/fragment/GalleryFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/fragment/GalleryFragment;)Lcom/vk/attachpicker/events/NotificationListener;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/fragment/GalleryFragment$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/fragment/GalleryFragment$$Lambda$1;-><init>(Lcom/vk/attachpicker/fragment/GalleryFragment;)V

    return-object v0
.end method


# virtual methods
.method public onNotification(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment$$Lambda$1;->arg$1:Lcom/vk/attachpicker/fragment/GalleryFragment;

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vk/attachpicker/fragment/GalleryFragment;->lambda$new$29(IILjava/lang/Void;)V

    return-void
.end method
