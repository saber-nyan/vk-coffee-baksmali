.class public Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;
.super Landroid/widget/BaseAdapter;
.source "CitiesAutocompleteAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;
    }
.end annotation


# instance fields
.field private cities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/data/database/City;",
            ">;"
        }
    .end annotation
.end field

.field private country:I

.field private delaying:Ljava/lang/Runnable;

.field private filter:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;

.field private handler:Landroid/os/Handler;

.field private hints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/data/database/City;",
            ">;"
        }
    .end annotation
.end field

.field private none:Lcom/vkcoffee/android/data/database/City;

.field private query:Ljava/lang/String;

.field private req:Lcom/vkcoffee/android/api/VKAPIRequest;

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/data/database/City;",
            ">;"
        }
    .end annotation
.end field

.field private showNone:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    new-instance v0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;

    invoke-direct {v0, p0, v2}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;-><init>(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;)V

    iput-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->filter:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;

    .line 27
    iput v1, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->country:I

    .line 28
    iput-object v2, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->query:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->hints:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->results:Ljava/util/List;

    .line 30
    iget-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->hints:Ljava/util/List;

    iput-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->cities:Ljava/util/List;

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->handler:Landroid/os/Handler;

    .line 39
    new-instance v0, Lcom/vkcoffee/android/data/database/City;

    invoke-direct {v0}, Lcom/vkcoffee/android/data/database/City;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->none:Lcom/vkcoffee/android/data/database/City;

    .line 40
    iget-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->none:Lcom/vkcoffee/android/data/database/City;

    iput v1, v0, Lcom/vkcoffee/android/data/database/City;->id:I

    .line 41
    iget-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->none:Lcom/vkcoffee/android/data/database/City;

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080302

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/data/database/City;->title:Ljava/lang/String;

    .line 42
    return-void
.end method

.method static synthetic access$1000(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->results:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->query:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->delaying:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$202(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->delaying:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;)Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->req:Lcom/vkcoffee/android/api/VKAPIRequest;

    return-object v0
.end method

.method static synthetic access$402(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;Lcom/vkcoffee/android/api/VKAPIRequest;)Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;
    .param p1, "x1"    # Lcom/vkcoffee/android/api/VKAPIRequest;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->req:Lcom/vkcoffee/android/api/VKAPIRequest;

    return-object p1
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->loadSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->showNone:Z

    return v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;)Lcom/vkcoffee/android/data/database/City;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->none:Lcom/vkcoffee/android/data/database/City;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->hints:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->cities:Ljava/util/List;

    return-object p1
.end method

.method private loadSearch(Ljava/lang/String;)V
    .locals 2
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    .line 138
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->query:Ljava/lang/String;

    .line 139
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->hints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->hints:Ljava/util/List;

    iput-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->cities:Ljava/util/List;

    .line 141
    invoke-virtual {p0}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->notifyDataSetChanged()V

    .line 171
    :goto_1
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 144
    :cond_1
    if-eqz p1, :cond_2

    .line 145
    iget-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->results:Ljava/util/List;

    iput-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->cities:Ljava/util/List;

    .line 146
    iget-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    invoke-virtual {p0}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->notifyDataSetChanged()V

    .line 149
    :cond_2
    new-instance v0, Lcom/vkcoffee/android/api/database/DatabaseGetCities;

    iget v1, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->country:I

    invoke-direct {v0, v1, p1}, Lcom/vkcoffee/android/api/database/DatabaseGetCities;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;-><init>(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/database/DatabaseGetCities;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->req:Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->cities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->filter:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->cities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->cities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/database/City;

    iget v0, v0, Lcom/vkcoffee/android/data/database/City;->id:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v10, 0x7f1001c4

    const/4 v9, 0x0

    const v8, 0x7f1001c5

    .line 61
    move-object v4, p2

    .line 62
    .local v4, "v":Landroid/view/View;
    if-nez v4, :cond_0

    .line 63
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f030060

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 65
    :cond_0
    iget-object v5, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->cities:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/database/City;

    .line 67
    .local v0, "city":Lcom/vkcoffee/android/data/database/City;
    iget-object v5, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->query:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 68
    iget-object v5, v0, Lcom/vkcoffee/android/data/database/City;->title:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->query:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 69
    .local v1, "pos":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 70
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v5

    iget-object v6, v0, Lcom/vkcoffee/android/data/database/City;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v2

    .line 71
    .local v2, "sp":Landroid/text/Spannable;
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f00ad

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v6, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->query:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    invoke-interface {v2, v5, v1, v6, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 72
    move-object v3, v2

    .line 79
    .end local v1    # "pos":I
    .end local v2    # "sp":Landroid/text/Spannable;
    .local v3, "title":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-boolean v6, v0, Lcom/vkcoffee/android/data/database/City;->important:Z

    if-eqz v6, :cond_3

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 81
    iget-object v5, v0, Lcom/vkcoffee/android/data/database/City;->region:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/vkcoffee/android/data/database/City;->area:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/vkcoffee/android/data/database/City;->region:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v5, v0, Lcom/vkcoffee/android/data/database/City;->area:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 82
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 83
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/vkcoffee/android/data/database/City;->area:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/vkcoffee/android/data/database/City;->region:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :goto_2
    return-object v4

    .line 74
    .end local v3    # "title":Ljava/lang/CharSequence;
    .restart local v1    # "pos":I
    :cond_1
    iget-object v3, v0, Lcom/vkcoffee/android/data/database/City;->title:Ljava/lang/String;

    .restart local v3    # "title":Ljava/lang/CharSequence;
    goto :goto_0

    .line 77
    .end local v1    # "pos":I
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_2
    iget-object v3, v0, Lcom/vkcoffee/android/data/database/City;->title:Ljava/lang/String;

    .restart local v3    # "title":Ljava/lang/CharSequence;
    goto :goto_0

    .line 80
    :cond_3
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_1

    .line 85
    :cond_4
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public setCountry(I)V
    .locals 2
    .param p1, "c"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->country:I

    .line 93
    iget-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->hints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 94
    iget-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 95
    invoke-virtual {p0}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->notifyDataSetChanged()V

    .line 96
    iget-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->filter:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;->filter(Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method

.method public setShowNone(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->showNone:Z

    .line 101
    return-void
.end method
