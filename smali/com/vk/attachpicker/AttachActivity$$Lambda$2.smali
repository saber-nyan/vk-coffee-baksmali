.class final synthetic Lcom/vk/attachpicker/AttachActivity$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final instance:Lcom/vk/attachpicker/AttachActivity$$Lambda$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/AttachActivity$$Lambda$2;

    invoke-direct {v0}, Lcom/vk/attachpicker/AttachActivity$$Lambda$2;-><init>()V

    sput-object v0, Lcom/vk/attachpicker/AttachActivity$$Lambda$2;->instance:Lcom/vk/attachpicker/AttachActivity$$Lambda$2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Landroid/view/View$OnClickListener;
    .locals 1

    sget-object v0, Lcom/vk/attachpicker/AttachActivity$$Lambda$2;->instance:Lcom/vk/attachpicker/AttachActivity$$Lambda$2;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/vk/attachpicker/AttachActivity;->lambda$initViews$6(Landroid/view/View;)V

    return-void
.end method
