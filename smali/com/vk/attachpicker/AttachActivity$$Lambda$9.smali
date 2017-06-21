.class final synthetic Lcom/vk/attachpicker/AttachActivity$$Lambda$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/AttachActivity;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/AttachActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/AttachActivity$$Lambda$9;->arg$1:Lcom/vk/attachpicker/AttachActivity;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/AttachActivity;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/AttachActivity$$Lambda$9;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/AttachActivity$$Lambda$9;-><init>(Lcom/vk/attachpicker/AttachActivity;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity$$Lambda$9;->arg$1:Lcom/vk/attachpicker/AttachActivity;

    invoke-virtual {v0}, Lcom/vk/attachpicker/AttachActivity;->lambda$initViews$13()V

    return-void
.end method
