.class public Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;
.super Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
.source "HeaderPostDisplayItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;
    }
.end annotation


# instance fields
.field public fromList:Z

.field public listPosition:I

.field public menuClickListener:Landroid/view/View$OnClickListener;

.field private photoOnClick:Landroid/view/View$OnClickListener;

.field public photosMode:Z

.field public post:Lcom/vkcoffee/android/NewsEntry;

.field public referrer:Ljava/lang/String;

.field public showMenu:Z


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/NewsEntry;ZZLjava/lang/String;I)V
    .locals 2
    .param p1, "_post"    # Lcom/vkcoffee/android/NewsEntry;
    .param p2, "_photosMode"    # Z
    .param p3, "_list"    # Z
    .param p4, "_referrer"    # Ljava/lang/String;
    .param p5, "_listPosition"    # I

    .prologue
    .line 33
    iget v0, p1, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iget v1, p1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;-><init>(II)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->showMenu:Z

    .line 34
    iput-boolean p2, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->photosMode:Z

    .line 35
    iput-object p1, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    .line 36
    iput-boolean p3, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->fromList:Z

    .line 37
    iput-object p4, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->referrer:Ljava/lang/String;

    .line 38
    iput p5, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->listPosition:I

    .line 39
    invoke-static {p0}, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->photoOnClick:Landroid/view/View$OnClickListener;

    .line 43
    return-void
.end method

.method public static createView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 56
    const v2, 0x7f0300ed

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 57
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;

    invoke-direct {v0, v3}, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;-><init>(Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$1;)V

    .line 58
    .local v0, "holder":Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;
    const v2, 0x7f1002a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->name:Landroid/widget/TextView;

    .line 59
    const v2, 0x7f1002a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->time:Landroid/widget/TextView;

    .line 60
    const v2, 0x7f1002a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->photo:Landroid/widget/ImageView;

    .line 61
    const v2, 0x7f1002a5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->menuBtn:Landroid/view/View;

    .line 62
    const v2, 0x7f1002a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->adsTitle:Landroid/widget/TextView;

    .line 63
    const v2, 0x7f1002a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->ageRestriction:Landroid/widget/TextView;

    .line 64
    const v2, 0x7f1002a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->profileBtn:Landroid/view/View;

    .line 65
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    return-object v1
.end method

.method public static createViewAd(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 70
    const v2, 0x7f0300ee

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 71
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;

    invoke-direct {v0, v3}, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;-><init>(Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$1;)V

    .line 72
    .local v0, "holder":Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;
    const v2, 0x7f1002a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->name:Landroid/widget/TextView;

    .line 73
    const v2, 0x7f1002a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->time:Landroid/widget/TextView;

    .line 74
    const v2, 0x7f1002a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->photo:Landroid/widget/ImageView;

    .line 75
    const v2, 0x7f1002a5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->menuBtn:Landroid/view/View;

    .line 76
    const v2, 0x7f1002a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->adsTitle:Landroid/widget/TextView;

    .line 77
    const v2, 0x7f1002a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->ageRestriction:Landroid/widget/TextView;

    .line 78
    const v2, 0x7f1002a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->profileBtn:Landroid/view/View;

    .line 79
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    return-object v1
.end method


# virtual methods
.method public bindView(Landroid/view/View;)V
    .locals 15
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 85
    const-string/jumbo v4, ""

    .line 86
    .local v4, "infoHtml":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v5, v8, Lcom/vkcoffee/android/NewsEntry;->userName:Ljava/lang/String;

    .line 88
    .local v5, "name":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v8, v8, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v9, 0x7

    if-ne v8, v9, :cond_b

    .line 89
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v8, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-boolean v8, v8, Lcom/vkcoffee/android/NewsEntry;->f:Z

    if-eqz v8, :cond_a

    const v8, 0x7f0e0033

    :goto_0
    iget-object v11, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v11, v11, Lcom/vkcoffee/android/NewsEntry;->postID:I

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v14, v14, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v8, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v9, v9, Lcom/vkcoffee/android/NewsEntry;->time:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vkcoffee/android/TimeUtils;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 101
    :goto_1
    iget-object v8, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v8, v8, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_0

    .line 102
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080316

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 107
    :cond_0
    iget-boolean v8, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->photosMode:Z

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v8, v8, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    iget-object v8, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v8, v8, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string/jumbo v9, "converted_to_photo"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 108
    iget-object v8, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v8, v8, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string/jumbo v9, "orig_type"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_f

    .line 109
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0032

    const/4 v11, 0x1

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 115
    :cond_1
    :goto_2
    iget-object v8, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    const/16 v9, 0x200

    invoke-virtual {v8, v9}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    const/16 v9, 0x400

    invoke-virtual {v8, v9}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 116
    :cond_2
    new-instance v1, Landroid/text/SpannableStringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 117
    .local v1, "bldr":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v8

    const-string/jumbo v9, "F"

    invoke-virtual {v8, v9}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v6

    .line 118
    .local v6, "sp":Landroid/text/Spannable;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v8, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    const/16 v10, 0x200

    invoke-virtual {v8, v10}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v8

    if-eqz v8, :cond_11

    const v8, 0x7f0201d6

    :goto_3
    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 119
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 120
    new-instance v8, Landroid/text/style/ImageSpan;

    const/4 v9, 0x0

    invoke-direct {v8, v2, v9}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v6, v8, v9, v10, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 121
    const-string/jumbo v8, " "

    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 122
    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 123
    move-object v5, v1

    .line 126
    .end local v1    # "bldr":Landroid/text/SpannableStringBuilder;
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .end local v6    # "sp":Landroid/text/Spannable;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;

    .line 138
    .local v3, "holder":Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;
    iget-object v8, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v8, v8, Lcom/vkcoffee/android/NewsEntry;->platform:I

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 139
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 140
    .restart local v1    # "bldr":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v8

    const-string/jumbo v9, "F"

    invoke-virtual {v8, v9}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v6

    .line 141
    .restart local v6    # "sp":Landroid/text/Spannable;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v9}, Lcom/vkcoffee/android/NewsEntry;->getPlatformIconResource()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 142
    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 143
    new-instance v8, Landroid/text/style/ImageSpan;

    const/4 v9, 0x0

    invoke-direct {v8, v2, v9}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v6, v8, v9, v10, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 144
    const-string/jumbo v8, " "

    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 145
    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 146
    move-object v4, v1

    .line 149
    .end local v1    # "bldr":Landroid/text/SpannableStringBuilder;
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .end local v6    # "sp":Landroid/text/Spannable;
    :cond_4
    iget-object v8, v3, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->adsTitle:Landroid/widget/TextView;

    if-eqz v8, :cond_5

    iget-object v8, v3, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->ageRestriction:Landroid/widget/TextView;

    if-eqz v8, :cond_5

    .line 150
    iget-object v8, v3, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->adsTitle:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v9, v9, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string/jumbo v10, "ads_title"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v8, v3, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->ageRestriction:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v9, v9, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string/jumbo v10, "age_restriction"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :cond_5
    iget-object v8, v3, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v8, v3, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v8, v3, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->menuBtn:Landroid/view/View;

    if-eqz v8, :cond_6

    .line 157
    iget-object v8, v3, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->menuBtn:Landroid/view/View;

    iget-object v9, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->menuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v9, v3, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->menuBtn:Landroid/view/View;

    iget-boolean v8, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->showMenu:Z

    if-eqz v8, :cond_12

    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object v8, v3, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->menuBtn:Landroid/view/View;

    iget-object v9, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v8, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 161
    :cond_6
    iget-object v8, v3, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->profileBtn:Landroid/view/View;

    iget-object v9, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->photoOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v9, v3, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->profileBtn:Landroid/view/View;

    iget-object v8, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v8, v8, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v8, v8, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v10, 0xb

    if-eq v8, v10, :cond_13

    const/4 v8, 0x1

    :goto_5
    invoke-virtual {v9, v8}, Landroid/view/View;->setClickable(Z)V

    .line 164
    iget-object v8, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v8, v8, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v8, v8, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_7

    iget-object v8, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v8, v8, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_7

    iget-object v8, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v8, v8, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_7

    iget-object v8, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v8, v8, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v9, 0xc

    if-ne v8, v9, :cond_8

    .line 165
    :cond_7
    const-string/jumbo v8, "view_post"

    invoke-static {v8}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->collapse()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->unique()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v8

    const-string/jumbo v9, "post_ids"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v11, v11, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v11, v11, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v11}, Lcom/vkcoffee/android/NewsEntry;->getTypeString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->referrer:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->listPosition:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v9

    const-string/jumbo v10, "repost_ids"

    iget-object v8, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    const/16 v11, 0x20

    invoke-virtual {v8, v11}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v8

    if-eqz v8, :cond_14

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v11}, Lcom/vkcoffee/android/NewsEntry;->getRepostTypeString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v11, v11, Lcom/vkcoffee/android/NewsEntry;->retweetUID:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, "_"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v11, v11, Lcom/vkcoffee/android/NewsEntry;->retweetOrigId:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_6
    invoke-virtual {v9, v10, v8}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->commit()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    .line 167
    :cond_8
    iget-object v8, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v8, v8, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v9, 0xc

    if-ne v8, v9, :cond_15

    .line 168
    iget-object v8, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v8, v8, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 169
    .local v0, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v8, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;

    if-eqz v8, :cond_9

    .line 170
    const-string/jumbo v8, "ads/impression"

    invoke-static {v8}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->collapse()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->unique()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v10

    const-string/jumbo v11, "ad_data_impression"

    move-object v8, v0

    check-cast v8, Lcom/vkcoffee/android/attachments/ShitAttachment;

    iget-object v8, v8, Lcom/vkcoffee/android/attachments/ShitAttachment;->dataImpression:Ljava/lang/String;

    invoke-virtual {v10, v11, v8}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->commit()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->flushBuffer()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    .line 171
    sget-object v8, Lcom/vkcoffee/android/data/Analytics;->viewedAds:Ljava/util/ArrayList;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "view"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v11, v11, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v11, v11, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 172
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "view"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v10, v10, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "_"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v10, v10, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/vkcoffee/android/data/Analytics;->trackAdView(Ljava/lang/String;)V

    .line 173
    check-cast v0, Lcom/vkcoffee/android/attachments/ShitAttachment;

    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    iget-object v8, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->statImpressionURLs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 174
    .local v7, "url":Ljava/lang/String;
    invoke-static {v7}, Lcom/vkcoffee/android/data/Analytics;->trackExternal(Ljava/lang/String;)V

    goto :goto_7

    .line 89
    .end local v3    # "holder":Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;
    .end local v7    # "url":Ljava/lang/String;
    :cond_a
    const v8, 0x7f0e0034

    goto/16 :goto_0

    .line 90
    :cond_b
    iget-object v8, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v8, v8, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v9, 0x6

    if-ne v8, v9, :cond_c

    .line 91
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0032

    iget-object v11, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v11, v11, Lcom/vkcoffee/android/NewsEntry;->postID:I

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v14, v14, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v9, v9, Lcom/vkcoffee/android/NewsEntry;->time:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vkcoffee/android/TimeUtils;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 93
    :cond_c
    iget-object v8, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v8, v8, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v9, 0xb

    if-ne v8, v9, :cond_d

    .line 94
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v9, v9, Lcom/vkcoffee/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v9, v9, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string/jumbo v10, "age_restriction"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 95
    :cond_d
    iget-boolean v8, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->fromList:Z

    if-eqz v8, :cond_e

    .line 96
    iget-object v8, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v8, v8, Lcom/vkcoffee/android/NewsEntry;->time:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vkcoffee/android/TimeUtils;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 98
    :cond_e
    iget-object v8, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v8, v8, Lcom/vkcoffee/android/NewsEntry;->time:I

    invoke-static {v8}, Lcom/vkcoffee/android/TimeUtils;->langDate(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 110
    :cond_f
    iget-object v8, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v8, v8, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string/jumbo v9, "orig_type"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x7

    if-ne v8, v9, :cond_1

    .line 111
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v8, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-boolean v8, v8, Lcom/vkcoffee/android/NewsEntry;->f:Z

    if-eqz v8, :cond_10

    const v8, 0x7f0e0033

    :goto_8
    const/4 v11, 0x1

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v8, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_10
    const v8, 0x7f0e0034

    goto :goto_8

    .line 118
    .restart local v1    # "bldr":Landroid/text/SpannableStringBuilder;
    .restart local v6    # "sp":Landroid/text/Spannable;
    :cond_11
    const v8, 0x7f0201d8

    goto/16 :goto_3

    .line 158
    .end local v1    # "bldr":Landroid/text/SpannableStringBuilder;
    .end local v6    # "sp":Landroid/text/Spannable;
    .restart local v3    # "holder":Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;
    :cond_12
    const/4 v8, 0x4

    goto/16 :goto_4

    .line 162
    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 165
    :cond_14
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 180
    :cond_15
    return-void
.end method

.method public getImageCount()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 2

    .prologue
    const/16 v0, 0xc

    .line 47
    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$new$718(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 40
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->userID:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->setFromPost(II)Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    .line 41
    const-string/jumbo v0, "open_from_post"

    invoke-static {v0}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->collapse()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->unique()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    const-string/jumbo v1, "post_ids"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->commit()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->flushBuffer()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    .line 42
    return-void
.end method

.method public setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 3
    .param p1, "image"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "fromCache"    # Z

    .prologue
    .line 189
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;

    .line 190
    .local v0, "holder":Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;
    if-eqz p3, :cond_0

    .line 191
    iget-object v1, v0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v2, v0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->photo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->userID:I

    if-lez v1, :cond_1

    const v1, 0x7f0202c5

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0202bd

    goto :goto_1
.end method
