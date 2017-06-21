.class final synthetic Lcom/vk/attachpicker/AttachActivity$$Lambda$14;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/functions/F0;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/AttachActivity;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/AttachActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/AttachActivity$$Lambda$14;->arg$1:Lcom/vk/attachpicker/AttachActivity;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/AttachActivity;)Lcom/vkcoffee/android/functions/F0;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/AttachActivity$$Lambda$14;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/AttachActivity$$Lambda$14;-><init>(Lcom/vk/attachpicker/AttachActivity;)V

    return-object v0
.end method


# virtual methods
.method public f()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity$$Lambda$14;->arg$1:Lcom/vk/attachpicker/AttachActivity;

    invoke-virtual {v0}, Lcom/vk/attachpicker/AttachActivity;->lambda$initTabs$18()Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method
