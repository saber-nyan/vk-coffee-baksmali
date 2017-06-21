.class final synthetic Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/ui/widget/SubPagerOfList$IScrollToPageView;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder;

.field private final arg$2:Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder;Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$$Lambda$1;->arg$1:Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$$Lambda$1;->arg$2:Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder;Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;)Lcom/vkcoffee/android/ui/widget/SubPagerOfList$IScrollToPageView;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$$Lambda$1;-><init>(Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder;Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;)V

    return-object v0
.end method


# virtual methods
.method public scrollToPageView()V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$$Lambda$1;->arg$1:Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$$Lambda$1;->arg$2:Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder;->lambda$bind$330(Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;)V

    return-void
.end method
