.class final synthetic Lcom/vkcoffee/android/fragments/NewsFragment$5$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/NewsFragment$5$$Lambda$1;->arg$1:Ljava/util/ArrayList;

    return-void
.end method

.method public static lambdaFactory$(Ljava/util/ArrayList;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/NewsFragment$5$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/NewsFragment$5$$Lambda$1;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment$5$$Lambda$1;->arg$1:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/NewsFragment$5;->lambda$success$500(Ljava/util/ArrayList;)V

    return-void
.end method
