.class final synthetic Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$$Lambda$3;->arg$1:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$$Lambda$3;-><init>(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$$Lambda$3;->arg$1:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    invoke-virtual {v0}, Lme/grishka/appkit/fragments/LoaderFragment;->loadData()V

    return-void
.end method
