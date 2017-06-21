.class final synthetic Lcom/vkcoffee/android/VKFragmentActivity$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/VKFragmentActivity;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/VKFragmentActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/VKFragmentActivity$$Lambda$1;->arg$1:Lcom/vkcoffee/android/VKFragmentActivity;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/VKFragmentActivity;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/VKFragmentActivity$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/VKFragmentActivity$$Lambda$1;-><init>(Lcom/vkcoffee/android/VKFragmentActivity;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/VKFragmentActivity$$Lambda$1;->arg$1:Lcom/vkcoffee/android/VKFragmentActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/VKFragmentActivity;->lambda$setTitleMarquee$697()V

    return-void
.end method
