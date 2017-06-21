.class Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;
.super Lcom/vk/attachpicker/widget/ViewPagerAdapter;
.source "EditorScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/screen/EditorScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FiltersAdapter"
.end annotation


# instance fields
.field public final FAKE_COUNT:I

.field private final filterWrappers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/vk/attachpicker/screen/EditorScreen;


# direct methods
.method public constructor <init>(Lcom/vk/attachpicker/screen/EditorScreen;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1444
    .local p2, "filterWrappers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;>;"
    iput-object p1, p0, Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-direct {p0}, Lcom/vk/attachpicker/widget/ViewPagerAdapter;-><init>()V

    .line 1440
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;->FAKE_COUNT:I

    .line 1445
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;->filterWrappers:Ljava/util/ArrayList;

    .line 1447
    new-instance v0, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;

    const-string/jumbo v1, "FILTER_ID_ORIGINAL"

    .line 1448
    invoke-virtual {p1}, Lcom/vk/attachpicker/screen/EditorScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080378

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;

    invoke-direct {v3}, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;-><init>()V

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vk/attachpicker/imageeditor/json/ApiFilter;I)V

    .line 1450
    .local v0, "original":Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;->filterWrappers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1451
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;->filterWrappers:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1452
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1465
    const/16 v0, 0x3e8

    return v0
.end method

.method public getFilterWrappers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;->filterWrappers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRealCount()I
    .locals 1

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;->filterWrappers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/support/v4/view/ViewPager;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "pager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 1460
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-virtual {v1}, Lcom/vk/attachpicker/screen/EditorScreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
