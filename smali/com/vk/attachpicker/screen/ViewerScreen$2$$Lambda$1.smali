.class final synthetic Lcom/vk/attachpicker/screen/ViewerScreen$2$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/screen/ViewerScreen$2;

.field private final arg$2:I


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/screen/ViewerScreen$2;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/screen/ViewerScreen$2$$Lambda$1;->arg$1:Lcom/vk/attachpicker/screen/ViewerScreen$2;

    iput p2, p0, Lcom/vk/attachpicker/screen/ViewerScreen$2$$Lambda$1;->arg$2:I

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/screen/ViewerScreen$2;I)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/screen/ViewerScreen$2$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/vk/attachpicker/screen/ViewerScreen$2$$Lambda$1;-><init>(Lcom/vk/attachpicker/screen/ViewerScreen$2;I)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$2$$Lambda$1;->arg$1:Lcom/vk/attachpicker/screen/ViewerScreen$2;

    iget v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen$2$$Lambda$1;->arg$2:I

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/screen/ViewerScreen$2;->lambda$onPageSelected$33(I)V

    return-void
.end method
