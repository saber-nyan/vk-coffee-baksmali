.class final synthetic Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vk/attachpicker/events/NotificationListener;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/screen/ViewerScreen;

.field private final arg$2:Lcom/vk/attachpicker/SelectionContext;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/screen/ViewerScreen;Lcom/vk/attachpicker/SelectionContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$1;->arg$1:Lcom/vk/attachpicker/screen/ViewerScreen;

    iput-object p2, p0, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$1;->arg$2:Lcom/vk/attachpicker/SelectionContext;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/screen/ViewerScreen;Lcom/vk/attachpicker/SelectionContext;)Lcom/vk/attachpicker/events/NotificationListener;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$1;-><init>(Lcom/vk/attachpicker/screen/ViewerScreen;Lcom/vk/attachpicker/SelectionContext;)V

    return-object v0
.end method


# virtual methods
.method public onNotification(IILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$1;->arg$1:Lcom/vk/attachpicker/screen/ViewerScreen;

    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$1;->arg$2:Lcom/vk/attachpicker/SelectionContext;

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/vk/attachpicker/screen/ViewerScreen;->lambda$new$30(Lcom/vk/attachpicker/SelectionContext;IILjava/lang/Void;)V

    return-void
.end method
