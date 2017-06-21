.class Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;
.super Lcom/vk/attachpicker/widget/ViewHolder;
.source "AlbumPickSpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vk/attachpicker/widget/ViewHolder",
        "<",
        "Lcom/vk/attachpicker/mediastore/AlbumEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private main:Landroid/widget/LinearLayout;

.field private photosCount:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;

.field private thumbnailImageView:Lcom/vk/attachpicker/widget/LocalImageView;

.field private title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;->this$0:Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;

    invoke-direct {p0}, Lcom/vk/attachpicker/widget/ViewHolder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;
    .param p2, "x1"    # Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$1;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;-><init>(Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public initialize(Landroid/content/Context;I)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewType"    # I

    .prologue
    .line 101
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030112

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;->main:Landroid/widget/LinearLayout;

    .line 102
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;->main:Landroid/widget/LinearLayout;

    const v1, 0x7f1002f2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;->title:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;->main:Landroid/widget/LinearLayout;

    const v1, 0x7f1002f3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;->photosCount:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;->main:Landroid/widget/LinearLayout;

    const v1, 0x7f1002f1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/widget/LocalImageView;

    iput-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;->thumbnailImageView:Lcom/vk/attachpicker/widget/LocalImageView;

    .line 105
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;->main:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public update(Landroid/content/Context;IILcom/vk/attachpicker/mediastore/AlbumEntry;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # I
    .param p3, "viewType"    # I
    .param p4, "data"    # Lcom/vk/attachpicker/mediastore/AlbumEntry;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 110
    if-eqz p4, :cond_0

    .line 111
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;->title:Landroid/widget/TextView;

    invoke-virtual {p4}, Lcom/vk/attachpicker/mediastore/AlbumEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;->photosCount:Landroid/widget/TextView;

    invoke-virtual {p4}, Lcom/vk/attachpicker/mediastore/AlbumEntry;->getImagesCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;->thumbnailImageView:Lcom/vk/attachpicker/widget/LocalImageView;

    invoke-virtual {p4}, Lcom/vk/attachpicker/mediastore/AlbumEntry;->getMediaStoreEntry()Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/vk/attachpicker/widget/LocalImageView;->setImage(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;Z)V

    .line 115
    :cond_0
    if-nez p3, :cond_5

    .line 116
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;->main:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->access$100()I

    move-result v1

    invoke-static {}, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->access$100()I

    move-result v2

    invoke-static {}, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->access$100()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 117
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;->title:Landroid/widget/TextView;

    invoke-static {}, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->access$200()I

    move-result v1

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 118
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;->title:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 119
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;->this$0:Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;

    invoke-static {v0}, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->access$300(Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;)Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;->this$0:Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;

    invoke-static {v0}, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->access$300(Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, p2, :cond_2

    .line 120
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;->title:Landroid/widget/TextView;

    const v1, -0xae7e48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    :goto_0
    invoke-virtual {p4}, Lcom/vk/attachpicker/mediastore/AlbumEntry;->getMediaStoreEntry()Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;->thumbnailImageView:Lcom/vk/attachpicker/widget/LocalImageView;

    invoke-virtual {v0, v4}, Lcom/vk/attachpicker/widget/LocalImageView;->setVisibility(I)V

    .line 129
    :goto_1
    invoke-virtual {p4}, Lcom/vk/attachpicker/mediastore/AlbumEntry;->getImagesCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 130
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;->photosCount:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    :cond_1
    :goto_2
    return-void

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;->title:Landroid/widget/TextView;

    const v1, -0xd1cfcd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;->thumbnailImageView:Lcom/vk/attachpicker/widget/LocalImageView;

    invoke-virtual {v0, v5}, Lcom/vk/attachpicker/widget/LocalImageView;->setVisibility(I)V

    goto :goto_1

    .line 132
    :cond_4
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;->photosCount:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 134
    :cond_5
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;->main:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->access$400()I

    move-result v1

    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 136
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 137
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;->title:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 138
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;->title:Landroid/widget/TextView;

    const v1, -0x9e9a97

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;->thumbnailImageView:Lcom/vk/attachpicker/widget/LocalImageView;

    invoke-virtual {v0, v5}, Lcom/vk/attachpicker/widget/LocalImageView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;->photosCount:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public bridge synthetic update(Landroid/content/Context;IILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 92
    check-cast p4, Lcom/vk/attachpicker/mediastore/AlbumEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter$Holder;->update(Landroid/content/Context;IILcom/vk/attachpicker/mediastore/AlbumEntry;)V

    return-void
.end method
