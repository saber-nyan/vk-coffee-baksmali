.class final synthetic Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$9;
.super Ljava/lang/Object;

# interfaces
.implements Lme/grishka/appkit/views/DividerItemDecoration$Provider;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/market/GoodFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/market/GoodFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$9;->arg$1:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lme/grishka/appkit/views/DividerItemDecoration$Provider;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$9;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$9;-><init>(Lcom/vkcoffee/android/fragments/market/GoodFragment;)V

    return-object v0
.end method


# virtual methods
.method public needDrawDividerAfter(I)Z
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$9;->arg$1:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->lambda$onViewCreated$211(I)Z

    move-result v0

    return v0
.end method
