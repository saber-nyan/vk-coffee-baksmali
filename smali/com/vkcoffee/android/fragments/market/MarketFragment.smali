.class public Lcom/vkcoffee/android/fragments/market/MarketFragment;
.super Lcom/vkcoffee/android/fragments/CardRecyclerFragment;
.source "MarketFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter;,
        Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;
    }
.end annotation


# static fields
.field private static final MODE_ALBUM:I = 0x1

.field private static final MODE_ALBUMS_WITH_GOODS:I = 0x0

.field private static final MODE_ALL_ALBUMS:I = 0x2

.field private static final MODE_FAVE:I = 0x4

.field private static final MODE_SEARCH:I = 0x3

.field private static final REQUEST_CODE_FILTERS:I = 0x41c252


# instance fields
.field private adapter:Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter;

.field private currency:Ljava/lang/String;

.field public dataHorizontal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;",
            ">;"
        }
    .end annotation
.end field

.field public dataVertical:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;",
            ">;"
        }
    .end annotation
.end field

.field private filterByPrice:Z

.field private filterByPriceFinish:J

.field private filterByPriceStart:J

.field private maxPriceLong:J

.field private minPriceLong:J

.field private mode:I

.field private searchQuery:Ljava/lang/String;

.field private searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

.field private searching:Z

.field private showAllAlbums:Landroid/view/View$OnClickListener;

.field private sortType:Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 131
    const v0, 0x7f0300ca

    const/16 v1, 0x18

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;-><init>(II)V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->dataHorizontal:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->dataVertical:Ljava/util/List;

    .line 88
    new-instance v0, Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter;

    invoke-direct {v0, p0, v3}, Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/market/MarketFragment;Lcom/vkcoffee/android/fragments/market/MarketFragment$1;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->adapter:Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter;

    .line 89
    invoke-static {}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;->values()[Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

    move-result-object v0

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->sortType:Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

    .line 91
    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->searching:Z

    .line 93
    iput-wide v4, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->minPriceLong:J

    .line 94
    iput-wide v4, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->maxPriceLong:J

    .line 97
    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->filterByPrice:Z

    .line 98
    iput-wide v6, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->filterByPriceStart:J

    .line 99
    iput-wide v6, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->filterByPriceFinish:J

    .line 109
    iput v2, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->mode:I

    .line 111
    iput-object v3, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->searchQuery:Ljava/lang/String;

    .line 113
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/market/MarketFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/market/MarketFragment;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->showAllAlbums:Landroid/view/View$OnClickListener;

    .line 132
    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/market/MarketFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/MarketFragment;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->searching:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/vkcoffee/android/fragments/market/MarketFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/MarketFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->onDataLoaded(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/vkcoffee/android/fragments/market/MarketFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/MarketFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->searching:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/vkcoffee/android/fragments/market/MarketFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/MarketFragment;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->isTablet:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/vkcoffee/android/fragments/market/MarketFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/MarketFragment;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->isTablet:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/vkcoffee/android/fragments/market/MarketFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/MarketFragment;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->isTablet:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/vkcoffee/android/fragments/market/MarketFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/MarketFragment;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->isTablet:Z

    return v0
.end method

.method static synthetic access$202(Lcom/vkcoffee/android/fragments/market/MarketFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/MarketFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->searchQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/vkcoffee/android/fragments/market/MarketFragment;J)J
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/MarketFragment;
    .param p1, "x1"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->minPriceLong:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/vkcoffee/android/fragments/market/MarketFragment;J)J
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/MarketFragment;
    .param p1, "x1"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->maxPriceLong:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/vkcoffee/android/fragments/market/MarketFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/MarketFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->currency:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/fragments/market/MarketFragment;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/MarketFragment;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/fragments/market/MarketFragment;)Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/MarketFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->adapter:Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/fragments/market/MarketFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/MarketFragment;

    .prologue
    .line 55
    iget v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->mode:I

    return v0
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/fragments/market/MarketFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/MarketFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->onDataLoaded(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic lambda$onCreateView$342(I)Z
    .locals 1
    .param p0, "position"    # I

    .prologue
    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method private updateFilters()V
    .locals 6

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 304
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 305
    const v1, 0x7f100282

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->filterByPrice:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-static {v2, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    .line 306
    const v1, 0x7f100284

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->filterByPriceStart:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->filterByPriceFinish:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->currency:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/ViewUtils;->setText(Landroid/widget/TextView;Ljava/lang/Object;)V

    .line 309
    :cond_0
    return-void

    .line 305
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method


# virtual methods
.method protected createData(Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;ZZ)Ljava/util/List;
    .locals 14
    .param p1, "response"    # Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;
    .param p2, "showMarketTitle"    # Z
    .param p3, "isVertical"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    if-eqz p3, :cond_3

    const/4 v0, 0x2

    .line 428
    .local v0, "TYPE_ALBUM_ITEMS":I
    :goto_0
    if-eqz p3, :cond_4

    const/4 v1, 0x0

    .line 430
    .local v1, "TYPE_GOOD_ITEMS":I
    :goto_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;>;"
    iget-object v10, p1, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->albums:Lcom/vkcoffee/android/data/VKList;

    if-eqz v10, :cond_f

    iget-object v10, p1, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->albums:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v10}, Lcom/vkcoffee/android/data/VKList;->size()I

    move-result v10

    if-lez v10, :cond_f

    .line 433
    iget v10, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->mode:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_2

    .line 434
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v12, 0x7f0801fe

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "  /cFF909499"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 435
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v11

    iget-object v12, p1, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->albums:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v12}, Lcom/vkcoffee/android/data/VKList;->total()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/e"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 434
    invoke-static {v10}, Lcom/vkcoffee/android/TextFormatter;->processString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 436
    .local v9, "title":Ljava/lang/CharSequence;
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->isTablet:Z

    if-eqz v10, :cond_1

    :cond_0
    if-nez p2, :cond_5

    .line 437
    :cond_1
    const/4 v10, 0x5

    invoke-static {v10, v9}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    .end local v9    # "title":Ljava/lang/CharSequence;
    :cond_2
    :goto_2
    iget-boolean v10, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->isTablet:Z

    if-eqz v10, :cond_6

    const/4 v10, 0x3

    move v11, v10

    :goto_3
    if-eqz p3, :cond_7

    const/4 v10, 0x1

    :goto_4
    mul-int v3, v11, v10

    .line 444
    .local v3, "countInRow":I
    iget-object v10, p1, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->albums:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v10}, Lcom/vkcoffee/android/data/VKList;->size()I

    move-result v10

    rem-int/2addr v10, v3

    if-nez v10, :cond_8

    iget-object v10, p1, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->albums:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v10}, Lcom/vkcoffee/android/data/VKList;->size()I

    move-result v10

    div-int v4, v10, v3

    .line 446
    .local v4, "countRow":I
    :goto_5
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    if-ge v6, v4, :cond_e

    .line 447
    new-array v2, v3, [Lcom/vkcoffee/android/data/GoodAlbum;

    .line 448
    .local v2, "albums":[Lcom/vkcoffee/android/data/GoodAlbum;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_7
    if-ge v7, v3, :cond_9

    .line 449
    iget-object v10, p1, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->albums:Lcom/vkcoffee/android/data/VKList;

    mul-int v11, v6, v3

    add-int/2addr v11, v7

    invoke-virtual {p0, v10, v11}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->getSafety(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkcoffee/android/data/GoodAlbum;

    aput-object v10, v2, v7

    .line 448
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 427
    .end local v0    # "TYPE_ALBUM_ITEMS":I
    .end local v1    # "TYPE_GOOD_ITEMS":I
    .end local v2    # "albums":[Lcom/vkcoffee/android/data/GoodAlbum;
    .end local v3    # "countInRow":I
    .end local v4    # "countRow":I
    .end local v6    # "i":I
    .end local v7    # "j":I
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;>;"
    :cond_3
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 428
    .restart local v0    # "TYPE_ALBUM_ITEMS":I
    :cond_4
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 439
    .restart local v1    # "TYPE_GOOD_ITEMS":I
    .restart local v8    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;>;"
    .restart local v9    # "title":Ljava/lang/CharSequence;
    :cond_5
    const/4 v10, 0x5

    invoke-static {v10, v9}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->top(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 443
    .end local v9    # "title":Ljava/lang/CharSequence;
    :cond_6
    const/4 v10, 0x2

    move v11, v10

    goto :goto_3

    :cond_7
    const/4 v10, 0x2

    goto :goto_4

    .line 444
    .restart local v3    # "countInRow":I
    :cond_8
    iget-object v10, p1, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->albums:Lcom/vkcoffee/android/data/VKList;

    .line 445
    invoke-virtual {v10}, Lcom/vkcoffee/android/data/VKList;->size()I

    move-result v10

    div-int/2addr v10, v3

    add-int/lit8 v4, v10, 0x1

    goto :goto_5

    .line 451
    .restart local v2    # "albums":[Lcom/vkcoffee/android/data/GoodAlbum;
    .restart local v4    # "countRow":I
    .restart local v6    # "i":I
    .restart local v7    # "j":I
    :cond_9
    add-int/lit8 v10, v4, -0x1

    if-ne v6, v10, :cond_d

    .line 452
    iget v10, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->mode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_b

    .line 453
    iget-object v10, p1, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->albums:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v10}, Lcom/vkcoffee/android/data/VKList;->size()I

    move-result v10

    iget-object v11, p1, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->albums:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v11}, Lcom/vkcoffee/android/data/VKList;->total()I

    move-result v11

    if-ne v10, v11, :cond_a

    .line 454
    invoke-static {v0, v2}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->bottom(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 456
    :cond_a
    invoke-static {v0, v2}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 459
    :cond_b
    iget-object v10, p1, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->albums:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v10}, Lcom/vkcoffee/android/data/VKList;->size()I

    move-result v10

    iget-object v11, p1, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->albums:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v11}, Lcom/vkcoffee/android/data/VKList;->total()I

    move-result v11

    if-eq v10, v11, :cond_c

    .line 460
    invoke-static {v0, v2}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 462
    :cond_c
    invoke-static {v0, v2}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->bottom(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 466
    :cond_d
    invoke-static {v0, v2}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 469
    .end local v2    # "albums":[Lcom/vkcoffee/android/data/GoodAlbum;
    .end local v7    # "j":I
    :cond_e
    iget v10, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->mode:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_f

    iget-object v10, p1, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->albums:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v10}, Lcom/vkcoffee/android/data/VKList;->size()I

    move-result v10

    iget-object v11, p1, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->albums:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v11}, Lcom/vkcoffee/android/data/VKList;->total()I

    move-result v11

    if-eq v10, v11, :cond_f

    .line 470
    const/4 v10, 0x4

    new-instance v11, Lcom/vkcoffee/android/ui/holder/commons/BottomButtonHolder$Data;

    iget-object v12, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->showAllAlbums:Landroid/view/View$OnClickListener;

    const v13, 0x7f0804e3

    .line 471
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/vkcoffee/android/ui/holder/commons/BottomButtonHolder$Data;-><init>(Landroid/view/View$OnClickListener;Ljava/lang/Object;)V

    .line 470
    invoke-static {v10, v11}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->bottom(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    .end local v3    # "countInRow":I
    .end local v4    # "countRow":I
    .end local v6    # "i":I
    :cond_f
    iget-boolean v10, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->isTablet:Z

    if-eqz v10, :cond_11

    const/4 v10, 0x4

    move v11, v10

    :goto_9
    if-eqz p3, :cond_12

    const/4 v10, 0x1

    :goto_a
    mul-int v3, v11, v10

    .line 476
    .restart local v3    # "countInRow":I
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->size()I

    move-result v10

    rem-int/2addr v10, v3

    if-nez v10, :cond_13

    invoke-virtual {p1}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->size()I

    move-result v10

    div-int v4, v10, v3

    .line 478
    .restart local v4    # "countRow":I
    :goto_b
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->size()I

    move-result v10

    if-lez v10, :cond_10

    iget v10, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->mode:I

    if-nez v10, :cond_10

    if-eqz p2, :cond_10

    .line 479
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v12, 0x7f080200

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "  /cFF909499"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 480
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v11

    invoke-virtual {p1}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->total()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/e"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 479
    invoke-static {v10}, Lcom/vkcoffee/android/TextFormatter;->processString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 481
    .restart local v9    # "title":Ljava/lang/CharSequence;
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_14

    .line 482
    const/4 v10, 0x5

    invoke-static {v10, v9}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    .end local v9    # "title":Ljava/lang/CharSequence;
    :cond_10
    :goto_c
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_d
    if-ge v6, v4, :cond_16

    .line 488
    new-array v5, v3, [Lcom/vkcoffee/android/data/Good;

    .line 489
    .local v5, "goods":[Lcom/vkcoffee/android/data/Good;
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_e
    if-ge v7, v3, :cond_15

    .line 490
    mul-int v10, v6, v3

    add-int/2addr v10, v7

    invoke-virtual {p0, p1, v10}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->getSafety(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkcoffee/android/data/Good;

    aput-object v10, v5, v7

    .line 489
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 475
    .end local v3    # "countInRow":I
    .end local v4    # "countRow":I
    .end local v5    # "goods":[Lcom/vkcoffee/android/data/Good;
    .end local v6    # "i":I
    .end local v7    # "j":I
    :cond_11
    const/4 v10, 0x2

    move v11, v10

    goto :goto_9

    :cond_12
    const/4 v10, 0x2

    goto :goto_a

    .line 477
    .restart local v3    # "countInRow":I
    :cond_13
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->size()I

    move-result v10

    div-int/2addr v10, v3

    add-int/lit8 v4, v10, 0x1

    goto :goto_b

    .line 484
    .restart local v4    # "countRow":I
    .restart local v9    # "title":Ljava/lang/CharSequence;
    :cond_14
    const/4 v10, 0x5

    invoke-static {v10, v9}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->top(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 492
    .end local v9    # "title":Ljava/lang/CharSequence;
    .restart local v5    # "goods":[Lcom/vkcoffee/android/data/Good;
    .restart local v6    # "i":I
    .restart local v7    # "j":I
    :cond_15
    invoke-static {v1, v5}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 494
    .end local v5    # "goods":[Lcom/vkcoffee/android/data/Good;
    .end local v7    # "j":I
    :cond_16
    return-object v8
.end method

.method protected doLoadData(II)V
    .locals 10
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 222
    iget v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->mode:I

    packed-switch v0, :pswitch_data_0

    .line 252
    new-instance v6, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->getOwnerId()I

    move-result v0

    invoke-direct {v6, v0, p2, p1}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;-><init>(III)V

    .line 253
    .local v6, "getMarketPage":Lcom/vkcoffee/android/api/market/MarketGetMarketPage;
    if-nez p1, :cond_0

    .line 254
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->isTablet:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {v6, v0, v4}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;->setAlbumsParams(II)V

    .line 263
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->isTablet:Z

    if-eqz v0, :cond_2

    :cond_1
    move v4, v1

    .line 264
    .local v4, "isVertical":Z
    :cond_2
    new-instance v0, Lcom/vkcoffee/android/fragments/market/MarketFragment$3;

    move-object v1, p0

    move-object v2, p0

    move v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/fragments/market/MarketFragment$3;-><init>(Lcom/vkcoffee/android/fragments/market/MarketFragment;Landroid/app/Fragment;IZI)V

    invoke-virtual {v6, v0}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 291
    iput-object v6, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 292
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 293
    return-void

    .line 224
    .end local v4    # "isVertical":Z
    .end local v6    # "getMarketPage":Lcom/vkcoffee/android/api/market/MarketGetMarketPage;
    :pswitch_0
    invoke-static {p2, p1}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;->fave(II)Lcom/vkcoffee/android/api/market/MarketGetMarketPage;

    move-result-object v6

    .line 225
    .restart local v6    # "getMarketPage":Lcom/vkcoffee/android/api/market/MarketGetMarketPage;
    goto :goto_1

    .line 227
    .end local v6    # "getMarketPage":Lcom/vkcoffee/android/api/market/MarketGetMarketPage;
    :pswitch_1
    new-instance v6, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->getOwnerId()I

    move-result v0

    invoke-direct {v6, v0, p2, p1}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;-><init>(III)V

    .line 228
    .restart local v6    # "getMarketPage":Lcom/vkcoffee/android/api/market/MarketGetMarketPage;
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->sortType:Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

    invoke-virtual {v6, v0}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;->setSortType(Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;)V

    .line 229
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->searchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;->setQuery(Ljava/lang/String;)V

    .line 232
    :cond_3
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->filterByPrice:Z

    if-eqz v0, :cond_4

    .line 233
    iget-wide v2, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->filterByPriceStart:J

    iget-wide v8, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->filterByPriceFinish:J

    invoke-virtual {v6, v2, v3, v8, v9}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;->setPrice(JJ)V

    .line 235
    :cond_4
    if-nez p1, :cond_0

    .line 236
    invoke-virtual {v6}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;->forceLoadMarket()V

    goto :goto_1

    .line 240
    .end local v6    # "getMarketPage":Lcom/vkcoffee/android/api/market/MarketGetMarketPage;
    :pswitch_2
    new-instance v6, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->getOwnerId()I

    move-result v0

    invoke-direct {v6, v0, p2, p1}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;-><init>(III)V

    .line 241
    .restart local v6    # "getMarketPage":Lcom/vkcoffee/android/api/market/MarketGetMarketPage;
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->sortType:Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

    invoke-virtual {v6, v0}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;->setSortType(Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;)V

    .line 242
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->getAlbumId()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;->setAlbumId(I)V

    .line 243
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->filterByPrice:Z

    if-eqz v0, :cond_5

    .line 244
    iget-wide v2, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->filterByPriceStart:J

    iget-wide v8, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->filterByPriceFinish:J

    invoke-virtual {v6, v2, v3, v8, v9}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;->setPrice(JJ)V

    .line 246
    :cond_5
    if-nez p1, :cond_0

    .line 247
    invoke-virtual {v6}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;->forceLoadMarket()V

    goto :goto_1

    .line 254
    :cond_6
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 258
    .end local v6    # "getMarketPage":Lcom/vkcoffee/android/api/market/MarketGetMarketPage;
    :pswitch_3
    new-instance v6, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->getOwnerId()I

    move-result v0

    invoke-direct {v6, v0, v4, v4}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;-><init>(III)V

    .line 259
    .restart local v6    # "getMarketPage":Lcom/vkcoffee/android/api/market/MarketGetMarketPage;
    invoke-virtual {v6, p2, p1}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;->setAlbumsParams(II)V

    goto/16 :goto_1

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->adapter:Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter;

    return-object v0
.end method

.method protected getAlbumId()I
    .locals 3

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "album"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getOwnerId()I
    .locals 2

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "owner_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getSafety(Ljava/util/List;I)Ljava/lang/Object;
    .locals 1
    .param p2, "index"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)TT;"
        }
    .end annotation

    .prologue
    .line 499
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-ltz p2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic lambda$new$341(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    new-instance v0, Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->getOwnerId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;-><init>(I)V

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;->setAllAlbumsMode()Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;->go(Landroid/content/Context;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v2, 0x0

    .line 369
    packed-switch p1, :pswitch_data_0

    .line 380
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 371
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->filterByPrice:Z

    .line 373
    const-string/jumbo v0, "min"

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->filterByPriceStart:J

    .line 374
    const-string/jumbo v0, "max"

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->filterByPriceFinish:J

    .line 375
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->updateFilters()V

    .line 376
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->reload()V

    goto :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x41c252
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 182
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onAttach(Landroid/app/Activity;)V

    .line 184
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "isFaveMode"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x4

    iput v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->mode:I

    .line 186
    sget-object v0, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;->fave:Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;

    invoke-static {v0}, Lcom/vkcoffee/android/attachments/MarketAttachment;->setLastSource(Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;)V

    .line 197
    :goto_0
    iget v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->mode:I

    packed-switch v0, :pswitch_data_0

    .line 208
    :goto_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->loadData()V

    .line 209
    return-void

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "isSearchMode"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    const/4 v0, 0x3

    iput v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->mode:I

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "isAllAlbums"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    const/4 v0, 0x2

    iput v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->mode:I

    goto :goto_0

    .line 191
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->getAlbumId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 192
    iput v2, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->mode:I

    goto :goto_0

    .line 194
    :cond_3
    const/4 v0, 0x1

    iput v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->mode:I

    goto :goto_0

    .line 199
    :pswitch_0
    const v0, 0x7f08029e

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->setTitle(I)V

    goto :goto_1

    .line 202
    :pswitch_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "title"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 205
    :pswitch_2
    const v0, 0x7f0801fe

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->setTitle(I)V

    goto :goto_1

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v10, 0x0

    const v9, 0x41c252

    const-wide/high16 v4, -0x8000000000000000L

    .line 341
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 365
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 343
    :pswitch_1
    iget-wide v2, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->minPriceLong:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->maxPriceLong:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->currency:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    new-instance v1, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$Builder;

    iget-wide v2, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->minPriceLong:J

    iget-wide v4, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->maxPriceLong:J

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->currency:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$Builder;-><init>(JJLjava/lang/String;)V

    .line 346
    .local v1, "builder":Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$Builder;
    iget-wide v2, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->filterByPriceStart:J

    cmp-long v0, v2, v10

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->filterByPriceFinish:J

    cmp-long v0, v2, v10

    if-eqz v0, :cond_1

    .line 347
    iget-wide v2, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->filterByPriceStart:J

    iget-wide v4, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->filterByPriceFinish:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$Builder;->setCurrentValues(JJ)Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$Builder;

    .line 349
    :cond_1
    invoke-virtual {v1, p0, v9}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$Builder;->forResult(Landroid/app/Fragment;I)V

    goto :goto_0

    .line 353
    .end local v1    # "builder":Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$Builder;
    :pswitch_2
    iget-wide v2, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->minPriceLong:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->maxPriceLong:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 354
    new-instance v3, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$Builder;

    iget-wide v4, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->minPriceLong:J

    iget-wide v6, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->maxPriceLong:J

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->currency:Ljava/lang/String;

    invoke-direct/range {v3 .. v8}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$Builder;-><init>(JJLjava/lang/String;)V

    iget-wide v4, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->filterByPriceStart:J

    iget-wide v6, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->filterByPriceFinish:J

    .line 355
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$Builder;->setCurrentValues(JJ)Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$Builder;

    move-result-object v0

    .line 356
    invoke-virtual {v0, p0, v9}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$Builder;->forResult(Landroid/app/Fragment;I)V

    goto :goto_0

    .line 360
    :pswitch_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->filterByPrice:Z

    .line 361
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->updateFilters()V

    .line 362
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->reload()V

    goto :goto_0

    .line 341
    :pswitch_data_0
    .packed-switch 0x7f100281
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 136
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 137
    if-eqz p1, :cond_1

    .line 138
    invoke-static {}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;->values()[Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

    move-result-object v2

    const-string/jumbo v3, "sortType"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->sortType:Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

    .line 139
    const-string/jumbo v2, "minPrice"

    iget-wide v4, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->minPriceLong:J

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->minPriceLong:J

    .line 140
    const-string/jumbo v2, "maxPrice"

    iget-wide v4, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->maxPriceLong:J

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->maxPriceLong:J

    .line 141
    const-string/jumbo v2, "currency"

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->currency:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->currency:Ljava/lang/String;

    .line 142
    const-string/jumbo v2, "filterByPrice"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->filterByPrice:Z

    .line 143
    const-string/jumbo v0, "filterByPriceStart"

    iget-wide v2, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->filterByPriceStart:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->filterByPriceStart:J

    .line 144
    const-string/jumbo v0, "filterByPriceFinish"

    iget-wide v2, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->filterByPriceFinish:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->filterByPriceFinish:J

    .line 145
    const-string/jumbo v0, "mode"

    iget v2, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->mode:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->mode:I

    .line 146
    const-string/jumbo v0, "searchQuery"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->searchQuery:Ljava/lang/String;

    .line 148
    :cond_1
    iget v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->mode:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 149
    new-instance v0, Lcom/vkcoffee/android/fragments/market/MarketFragment$2;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/vkcoffee/android/fragments/market/MarketFragment$1;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/market/MarketFragment$1;-><init>(Lcom/vkcoffee/android/fragments/market/MarketFragment;)V

    invoke-direct {v0, p0, v2, v3}, Lcom/vkcoffee/android/fragments/market/MarketFragment$2;-><init>(Lcom/vkcoffee/android/fragments/market/MarketFragment;Landroid/app/Activity;Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    .line 177
    :cond_2
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->setHasOptionsMenu(Z)V

    .line 178
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 398
    iget v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->mode:I

    if-nez v0, :cond_0

    .line 399
    const v0, 0x7f110007

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 401
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v11, 0x41000000    # 8.0f

    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 313
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v10

    .line 314
    .local v10, "view":Landroid/view/View;
    const v3, 0x7f100281

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget v3, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->mode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->mode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 316
    const v3, 0x7f10027f

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    .line 317
    const v3, 0x7f100286

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    .line 318
    const v3, 0x7f100282

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    .line 331
    :goto_0
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 332
    .local v1, "transparent":Landroid/graphics/drawable/Drawable;
    new-instance v0, Lme/grishka/appkit/views/DividerItemDecoration;

    invoke-static {v11}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    invoke-static {v11}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v6

    move-object v3, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Lme/grishka/appkit/views/DividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;I)V

    .line 333
    .local v0, "dividers":Lme/grishka/appkit/views/DividerItemDecoration;
    invoke-static {}, Lcom/vkcoffee/android/fragments/market/MarketFragment$$Lambda$2;->lambdaFactory$()Lme/grishka/appkit/views/DividerItemDecoration$Provider;

    move-result-object v2

    invoke-virtual {v0, v2}, Lme/grishka/appkit/views/DividerItemDecoration;->setProvider(Lme/grishka/appkit/views/DividerItemDecoration$Provider;)Lme/grishka/appkit/views/DividerItemDecoration;

    .line 334
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v2, v0}, Lme/grishka/appkit/views/UsableRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 336
    return-object v10

    .line 320
    .end local v0    # "dividers":Lme/grishka/appkit/views/DividerItemDecoration;
    .end local v1    # "transparent":Landroid/graphics/drawable/Drawable;
    :cond_0
    const v3, 0x7f100280

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    .line 321
    .local v9, "spinner":Landroid/widget/Spinner;
    new-instance v7, Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0300ce

    invoke-direct {v7, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 322
    .local v7, "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x7f0300cf

    invoke-virtual {v7, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 324
    invoke-static {}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;->values()[Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v8, v4, v3

    .line 325
    .local v8, "sortType":Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;
    iget v6, v8, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;->titleRes:I

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 324
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 327
    .end local v8    # "sortType":Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;
    :cond_1
    invoke-virtual {v9, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 328
    invoke-virtual {v9, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->sortType:Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

    invoke-static {}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;->values()[Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

    move-result-object v1

    aget-object v1, v1, p3

    if-eq v0, v1, :cond_0

    .line 417
    invoke-static {}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;->values()[Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

    move-result-object v0

    aget-object v0, v0, p3

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->sortType:Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

    .line 418
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->reload()V

    .line 420
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 424
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 405
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 410
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 407
    :pswitch_0
    new-instance v0, Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->getOwnerId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;-><init>(I)V

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;->setSearchMode()Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;->go(Landroid/content/Context;)V

    .line 408
    const/4 v0, 0x1

    goto :goto_0

    .line 405
    :pswitch_data_0
    .packed-switch 0x7f10026a
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 119
    const-string/jumbo v0, "sortType"

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->sortType:Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

    invoke-virtual {v1}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    const-string/jumbo v0, "minPrice"

    iget-wide v2, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->minPriceLong:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 121
    const-string/jumbo v0, "maxPrice"

    iget-wide v2, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->maxPriceLong:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 122
    const-string/jumbo v0, "currency"

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->currency:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string/jumbo v1, "filterByPrice"

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->filterByPrice:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 124
    const-string/jumbo v0, "filterByPriceStart"

    iget-wide v2, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->filterByPriceStart:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 125
    const-string/jumbo v0, "filterByPriceFinish"

    iget-wide v2, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->filterByPriceFinish:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 126
    const-string/jumbo v0, "mode"

    iget v1, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->mode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    const-string/jumbo v0, "searchQuery"

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 386
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 387
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 390
    :cond_0
    const v0, 0x7f100283

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    const v0, 0x7f100285

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->updateFilters()V

    .line 394
    return-void
.end method

.method protected updateConfiguration()V
    .locals 3

    .prologue
    .line 297
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->updateConfiguration()V

    .line 298
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->adapter:Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->isTablet:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->dataVertical:Ljava/util/List;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter;->setData(Ljava/util/List;)V

    .line 300
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->dataHorizontal:Ljava/util/List;

    goto :goto_0
.end method
