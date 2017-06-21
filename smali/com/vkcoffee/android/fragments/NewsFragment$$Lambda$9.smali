.class final synthetic Lcom/vkcoffee/android/fragments/NewsFragment$$Lambda$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/NewsFragment;

.field private final arg$2:Ljava/util/ArrayList;

.field private final arg$3:Z


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/NewsFragment;Ljava/util/ArrayList;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/NewsFragment$$Lambda$9;->arg$1:Lcom/vkcoffee/android/fragments/NewsFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/NewsFragment$$Lambda$9;->arg$2:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/vkcoffee/android/fragments/NewsFragment$$Lambda$9;->arg$3:Z

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/NewsFragment;Ljava/util/ArrayList;Z)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/NewsFragment$$Lambda$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/fragments/NewsFragment$$Lambda$9;-><init>(Lcom/vkcoffee/android/fragments/NewsFragment;Ljava/util/ArrayList;Z)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment$$Lambda$9;->arg$1:Lcom/vkcoffee/android/fragments/NewsFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment$$Lambda$9;->arg$2:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment$$Lambda$9;->arg$3:Z

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->lambda$null$495(Ljava/util/ArrayList;Z)V

    return-void
.end method
