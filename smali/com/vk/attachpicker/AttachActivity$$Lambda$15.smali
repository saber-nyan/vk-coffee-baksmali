.class final synthetic Lcom/vk/attachpicker/AttachActivity$$Lambda$15;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/functions/F0;


# static fields
.field private static final instance:Lcom/vk/attachpicker/AttachActivity$$Lambda$15;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/AttachActivity$$Lambda$15;

    invoke-direct {v0}, Lcom/vk/attachpicker/AttachActivity$$Lambda$15;-><init>()V

    sput-object v0, Lcom/vk/attachpicker/AttachActivity$$Lambda$15;->instance:Lcom/vk/attachpicker/AttachActivity$$Lambda$15;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcom/vkcoffee/android/functions/F0;
    .locals 1

    sget-object v0, Lcom/vk/attachpicker/AttachActivity$$Lambda$15;->instance:Lcom/vk/attachpicker/AttachActivity$$Lambda$15;

    return-object v0
.end method


# virtual methods
.method public f()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/vk/attachpicker/AttachActivity;->lambda$initTabs$19()Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method
