.class final synthetic Lcom/vkcoffee/android/SDKAuthActivity$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final instance:Lcom/vkcoffee/android/SDKAuthActivity$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/SDKAuthActivity$$Lambda$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/SDKAuthActivity$$Lambda$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/SDKAuthActivity$$Lambda$1;->instance:Lcom/vkcoffee/android/SDKAuthActivity$$Lambda$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Landroid/view/View$OnLongClickListener;
    .locals 1

    sget-object v0, Lcom/vkcoffee/android/SDKAuthActivity$$Lambda$1;->instance:Lcom/vkcoffee/android/SDKAuthActivity$$Lambda$1;

    return-object v0
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-static {p1}, Lcom/vkcoffee/android/SDKAuthActivity;->lambda$onCreate$666(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
