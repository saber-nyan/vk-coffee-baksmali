.class final synthetic Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/functions/VoidF1;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)Lcom/vkcoffee/android/functions/VoidF1;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$$Lambda$2;-><init>(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)V

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    check-cast p1, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->openResult(Lcom/vkcoffee/android/UserProfile;)V

    return-void
.end method
