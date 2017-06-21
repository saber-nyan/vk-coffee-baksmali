.class final synthetic Lcom/vk/attachpicker/widget/PagerVideoPlayer$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vk/attachpicker/events/NotificationListener;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/widget/PagerVideoPlayer;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer$$Lambda$3;->arg$1:Lcom/vk/attachpicker/widget/PagerVideoPlayer;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)Lcom/vk/attachpicker/events/NotificationListener;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/widget/PagerVideoPlayer$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/widget/PagerVideoPlayer$$Lambda$3;-><init>(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)V

    return-object v0
.end method


# virtual methods
.method public onNotification(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer$$Lambda$3;->arg$1:Lcom/vk/attachpicker/widget/PagerVideoPlayer;

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->lambda$new$52(IILjava/lang/Float;)V

    return-void
.end method
