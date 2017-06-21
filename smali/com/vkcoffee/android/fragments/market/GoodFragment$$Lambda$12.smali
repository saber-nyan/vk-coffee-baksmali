.class final synthetic Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$12;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/market/GoodFragment;

.field private final arg$2:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

.field private final arg$3:Lcom/vkcoffee/android/data/Good;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/market/GoodFragment;Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;Lcom/vkcoffee/android/data/Good;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$12;->arg$1:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$12;->arg$2:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$12;->arg$3:Lcom/vkcoffee/android/data/Good;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/market/GoodFragment;Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;Lcom/vkcoffee/android/data/Good;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$12;-><init>(Lcom/vkcoffee/android/fragments/market/GoodFragment;Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;Lcom/vkcoffee/android/data/Good;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$12;->arg$1:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$12;->arg$2:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$12;->arg$3:Lcom/vkcoffee/android/data/Good;

    invoke-virtual {v0, v1, v2, p1}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->lambda$createGoodDataList$214(Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;Lcom/vkcoffee/android/data/Good;Landroid/view/View;)V

    return-void
.end method
