.class final synthetic Lcom/vkcoffee/android/fragments/NewsFragment$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/NewsFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/NewsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/NewsFragment$$Lambda$6;->arg$1:Lcom/vkcoffee/android/fragments/NewsFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/NewsFragment$$Lambda$6;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/NewsFragment$$Lambda$6;-><init>(Lcom/vkcoffee/android/fragments/NewsFragment;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment$$Lambda$6;->arg$1:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$lambda$0(Lcom/vkcoffee/android/fragments/NewsFragment;)V

    return-void
.end method
