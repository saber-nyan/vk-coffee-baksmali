.class public Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;
.super Landroid/widget/BaseAdapter;
.source "AlbumPickSpinnerAdapter.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;
    }
.end annotation


# static fields
.field private static final COLOR_TITLE:I = -0x9e9a97

.field private static final COLOR_TITLE_CURRENT:I = -0xae7e48

.field private static final COLOR_TITLE_ITEM:I = -0xd1cfcd

.field private static final DP_1:I

.field private static final DP_18:I

.field private static final DP_8:I

.field public static final PHOTO_ENTRY:Lcom/vk/attachpicker/mediastore/AlbumEntry;

.field public static final VIDEO_ENTRY:Lcom/vk/attachpicker/mediastore/AlbumEntry;


# instance fields
.field private final albumEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vk/attachpicker/mediastore/AlbumEntry;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private final realAlbumEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vk/attachpicker/mediastore/AlbumEntry;",
            ">;"
        }
    .end annotation
.end field

.field private spinner:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 20
    new-instance v0, Lcom/vk/attachpicker/mediastore/AlbumEntry;

    const/16 v1, -0x64

    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080379

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vk/attachpicker/mediastore/AlbumEntry;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->PHOTO_ENTRY:Lcom/vk/attachpicker/mediastore/AlbumEntry;

    .line 21
    new-instance v0, Lcom/vk/attachpicker/mediastore/AlbumEntry;

    const/16 v1, -0xc8

    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08037a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vk/attachpicker/mediastore/AlbumEntry;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->VIDEO_ENTRY:Lcom/vk/attachpicker/mediastore/AlbumEntry;

    .line 23
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    sput v0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->DP_1:I

    .line 24
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    sput v0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->DP_8:I

    .line 25
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    sput v0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->DP_18:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "mediaType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vk/attachpicker/mediastore/AlbumEntry;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "albumEntry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vk/attachpicker/mediastore/AlbumEntry;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->albumEntries:Ljava/util/ArrayList;

    .line 37
    iput-object p1, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->realAlbumEntries:Ljava/util/ArrayList;

    .line 39
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->albumEntries:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->realAlbumEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 41
    const/16 v0, 0x6f

    if-ne p3, v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->albumEntries:Ljava/util/ArrayList;

    sget-object v1, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->PHOTO_ENTRY:Lcom/vk/attachpicker/mediastore/AlbumEntry;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->albumEntries:Ljava/util/ArrayList;

    sget-object v1, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->VIDEO_ENTRY:Lcom/vk/attachpicker/mediastore/AlbumEntry;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    const/16 v0, 0xde

    if-ne p3, v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->albumEntries:Ljava/util/ArrayList;

    sget-object v1, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->PHOTO_ENTRY:Lcom/vk/attachpicker/mediastore/AlbumEntry;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    :cond_2
    const/16 v0, 0x14d

    if-ne p3, v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->albumEntries:Ljava/util/ArrayList;

    sget-object v1, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->VIDEO_ENTRY:Lcom/vk/attachpicker/mediastore/AlbumEntry;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->DP_8:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->DP_1:I

    return v0
.end method

.method static synthetic access$300(Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->spinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->DP_18:I

    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->albumEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "i"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 69
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 70
    :cond_0
    new-instance v0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;-><init>(Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$1;)V

    .line 74
    .local v0, "holder":Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;
    :goto_0
    iget-object v1, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->context:Landroid/content/Context;

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->albumEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v2, p2

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;->getView(Landroid/content/Context;Landroid/view/View;IILjava/lang/Object;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 72
    .end local v0    # "holder":Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;

    .restart local v0    # "holder":Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;
    goto :goto_0
.end method

.method public getItem(I)Lcom/vk/attachpicker/mediastore/AlbumEntry;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->albumEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/mediastore/AlbumEntry;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->getItem(I)Lcom/vk/attachpicker/mediastore/AlbumEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 63
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "i"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 84
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 85
    :cond_0
    new-instance v0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;-><init>(Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$1;)V

    .line 89
    .local v0, "holder":Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;
    :goto_0
    iget-object v1, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->context:Landroid/content/Context;

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->albumEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v2, p2

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;->getView(Landroid/content/Context;Landroid/view/View;IILjava/lang/Object;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 87
    .end local v0    # "holder":Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;

    .restart local v0    # "holder":Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;
    goto :goto_0
.end method

.method public setSpinner(Landroid/widget/Spinner;)V
    .locals 0
    .param p1, "spinner"    # Landroid/widget/Spinner;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->spinner:Landroid/widget/Spinner;

    .line 79
    return-void
.end method
