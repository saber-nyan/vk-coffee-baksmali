.class public Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "GameInviteHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/data/GameRequest;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static final IMAGE_INDEX_APP:I = 0x1

.field public static final IMAGE_INDEX_USER:I


# instance fields
.field public appName:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public appSubtitle:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected currentRequest:Lcom/vkcoffee/android/data/GameRequest;

.field public final drawable:Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;

.field public icon:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public msg:Landroid/widget/TextView;

.field public name:Landroid/widget/TextView;

.field public photo:Landroid/widget/ImageView;

.field public time:Landroid/widget/TextView;

.field protected final visitSource:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visitSource"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visitSource"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "drawable"    # Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;

    .prologue
    .line 58
    const v0, 0x7f030031

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visitSource"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "drawable"    # Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;
    .param p4, "layoutRes"    # I

    .prologue
    .line 62
    invoke-direct {p0, p4, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/content/Context;)V

    .line 51
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->currentRequest:Lcom/vkcoffee/android/data/GameRequest;

    .line 63
    iput-object p3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->drawable:Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;

    .line 64
    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->visitSource:Ljava/lang/String;

    .line 66
    if-eqz p3, :cond_0

    .line 67
    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    :cond_0
    const v3, 0x7f100137

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->$(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->name:Landroid/widget/TextView;

    .line 70
    const v3, 0x7f100138

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->$(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->msg:Landroid/widget/TextView;

    .line 71
    const v3, 0x7f100009

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->$(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->appName:Landroid/widget/TextView;

    .line 72
    const v3, 0x7f100008

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->$(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->appSubtitle:Landroid/widget/TextView;

    .line 73
    const v3, 0x7f100136

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->$(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->time:Landroid/widget/TextView;

    .line 74
    const v3, 0x7f100135

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->$(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->photo:Landroid/widget/ImageView;

    .line 75
    const v3, 0x7f100007

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->$(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->icon:Landroid/widget/ImageView;

    .line 76
    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v3, 0x7f100139

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->$(I)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "buttonGoToGame":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    :cond_1
    const v3, 0x7f10013a

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->$(I)Landroid/view/View;

    move-result-object v1

    .line 82
    .local v1, "buttonHide":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 83
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :cond_2
    const v3, 0x7f10013b

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->$(I)Landroid/view/View;

    move-result-object v2

    .line 86
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 87
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    :cond_3
    const v3, 0x7f10013c

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->$(I)Landroid/view/View;

    move-result-object v2

    .line 90
    if-eqz v2, :cond_4

    .line 91
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :cond_4
    return-void
.end method

.method private static createForegroundColorSpan(Ljava/lang/String;I)Landroid/text/Spannable;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "color"    # I

    .prologue
    const/4 v3, 0x0

    .line 163
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 164
    .local v0, "sb":Landroid/text/Spannable;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v0, v1, v3, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 165
    return-object v0
.end method

.method private createTitle(Ljava/util/List;I)Landroid/text/SpannableStringBuilder;
    .locals 10
    .param p2, "typeRequest"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;I)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .prologue
    .local p1, "userProfiles":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/UserProfile;>;"
    const/4 v9, 0x1

    const/16 v8, 0x20

    .line 96
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0099

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 97
    .local v1, "colorTextBlue":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0055

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 98
    .local v0, "colorGameGray":I
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 99
    .local v5, "title":Landroid/text/SpannableStringBuilder;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 100
    .local v3, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 101
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/UserProfile;

    .line 102
    .local v4, "profile":Lcom/vkcoffee/android/UserProfile;
    iget v6, v4, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 100
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    :cond_0
    iget v6, v4, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v2, v6, :cond_2

    if-eqz v2, :cond_2

    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f080319

    invoke-virtual {p0, v7}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->createForegroundColorSpan(Ljava/lang/String;I)Landroid/text/Spannable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 111
    :cond_1
    :goto_2
    iget-object v6, v4, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->createTypefaceSpanColorSpan(Ljava/lang/String;I)Landroid/text/Spannable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 108
    :cond_2
    if-eqz v2, :cond_1

    .line 109
    const-string/jumbo v6, ", "

    invoke-static {v6, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->createForegroundColorSpan(Ljava/lang/String;I)Landroid/text/Spannable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 114
    .end local v4    # "profile":Lcom/vkcoffee/android/UserProfile;
    :cond_3
    if-ne p2, v9, :cond_4

    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v6

    if-le v6, v9, :cond_5

    const v6, 0x7f0801c6

    :goto_3
    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->createForegroundColorSpan(Ljava/lang/String;I)Landroid/text/Spannable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 117
    :cond_4
    return-object v5

    .line 115
    :cond_5
    const v6, 0x7f0801c4

    goto :goto_3
.end method

.method private static createTypefaceSpanColorSpan(Ljava/lang/String;I)Landroid/text/Spannable;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "color"    # I

    .prologue
    const/4 v3, 0x0

    .line 169
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 170
    .local v0, "sb":Landroid/text/Spannable;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v0, v1, v3, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 171
    new-instance v1, Lcom/vkcoffee/android/utils/TypefaceSpanAssets;

    sget-object v2, Lcom/vkcoffee/android/ui/Font;->Medium:Lcom/vkcoffee/android/ui/Font;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/Font;->typeface:Landroid/graphics/Typeface;

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/utils/TypefaceSpanAssets;-><init>(Landroid/graphics/Typeface;)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v0, v1, v3, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 172
    return-object v0
.end method

.method public static getImageUrl(ILcom/vkcoffee/android/data/GameRequest;)Ljava/lang/String;
    .locals 3
    .param p0, "image"    # I
    .param p1, "r"    # Lcom/vkcoffee/android/data/GameRequest;

    .prologue
    .line 238
    if-nez p0, :cond_2

    .line 239
    iget-object v1, p1, Lcom/vkcoffee/android/data/GameRequest;->userProfiles:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/vkcoffee/android/data/GameRequest;->userProfiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p1, Lcom/vkcoffee/android/data/GameRequest;->userProfiles:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    move-object v0, v1

    .line 240
    .local v0, "activeUser":Lcom/vkcoffee/android/UserProfile;
    :goto_0
    if-nez v0, :cond_1

    const-string/jumbo v1, ""

    .line 242
    .end local v0    # "activeUser":Lcom/vkcoffee/android/UserProfile;
    :goto_1
    return-object v1

    .line 239
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 240
    .restart local v0    # "activeUser":Lcom/vkcoffee/android/UserProfile;
    :cond_1
    iget-object v1, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    goto :goto_1

    .line 242
    .end local v0    # "activeUser":Lcom/vkcoffee/android/UserProfile;
    :cond_2
    iget-object v1, p1, Lcom/vkcoffee/android/data/GameRequest;->appUrl:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/data/GameRequest;)V
    .locals 9
    .param p1, "r"    # Lcom/vkcoffee/android/data/GameRequest;

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 122
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->currentRequest:Lcom/vkcoffee/android/data/GameRequest;

    .line 123
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->appName:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->appName:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/vkcoffee/android/data/GameRequest;->appTitle:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->appSubtitle:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 127
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->appSubtitle:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/vkcoffee/android/data/GameRequest;->appGenre:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :cond_1
    iget-object v2, p1, Lcom/vkcoffee/android/data/GameRequest;->userProfiles:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    iget-object v2, p1, Lcom/vkcoffee/android/data/GameRequest;->userProfiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p1, Lcom/vkcoffee/android/data/GameRequest;->userProfiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    move-object v0, v2

    .line 132
    .local v0, "activeUser":Lcom/vkcoffee/android/UserProfile;
    :goto_0
    invoke-virtual {p1}, Lcom/vkcoffee/android/data/GameRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/SpannableStringBuilder;

    .line 133
    .local v1, "title":Landroid/text/SpannableStringBuilder;
    if-nez v1, :cond_2

    .line 134
    iget-object v2, p1, Lcom/vkcoffee/android/data/GameRequest;->userProfiles:Ljava/util/ArrayList;

    iget v4, p1, Lcom/vkcoffee/android/data/GameRequest;->type:I

    invoke-direct {p0, v2, v4}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->createTitle(Ljava/util/List;I)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 135
    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/data/GameRequest;->setTag(Ljava/lang/Object;)V

    .line 137
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->time:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 139
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->time:Landroid/widget/TextView;

    iget v4, p1, Lcom/vkcoffee/android/data/GameRequest;->time:I

    int-to-long v4, v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/vkcoffee/android/TimeUtils;->shortDate(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_3
    iget v2, p1, Lcom/vkcoffee/android/data/GameRequest;->type:I

    if-ne v2, v7, :cond_7

    .line 143
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->msg:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->photo:Landroid/widget/ImageView;

    if-nez v0, :cond_b

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 154
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->drawable:Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;

    if-eqz v2, :cond_5

    .line 155
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->drawable:Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->currentRequest:Lcom/vkcoffee/android/data/GameRequest;

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;->updateRequest(Lcom/vkcoffee/android/data/GameRequest;)V

    .line 156
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->itemView:Landroid/view/View;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->drawable:Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    :cond_5
    return-void

    .end local v0    # "activeUser":Lcom/vkcoffee/android/UserProfile;
    .end local v1    # "title":Landroid/text/SpannableStringBuilder;
    :cond_6
    move-object v0, v3

    .line 130
    goto :goto_0

    .line 144
    .restart local v0    # "activeUser":Lcom/vkcoffee/android/UserProfile;
    .restart local v1    # "title":Landroid/text/SpannableStringBuilder;
    :cond_7
    iget-object v2, p1, Lcom/vkcoffee/android/data/GameRequest;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 145
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->msg:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/vkcoffee/android/data/GameRequest;->text:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 146
    :cond_8
    iget-object v2, p1, Lcom/vkcoffee/android/data/GameRequest;->userProfiles:Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    iget-object v2, p1, Lcom/vkcoffee/android/data/GameRequest;->userProfiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v7, :cond_9

    .line 147
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->msg:Landroid/widget/TextView;

    const v4, 0x7f0801d4

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 148
    :cond_9
    if-eqz v0, :cond_4

    .line 149
    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->msg:Landroid/widget/TextView;

    iget-boolean v2, v0, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v2, :cond_a

    const v2, 0x7f0801d2

    :goto_3
    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/vkcoffee/android/data/GameRequest;->appTitle:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {p0, v2, v5}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_a
    const v2, 0x7f0801d3

    goto :goto_3

    .line 152
    :cond_b
    iget v3, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lcom/vkcoffee/android/data/GameRequest;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->bind(Lcom/vkcoffee/android/data/GameRequest;)V

    return-void
.end method

.method public clearImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 225
    packed-switch p1, :pswitch_data_0

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 227
    :pswitch_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->photo:Landroid/widget/ImageView;

    const v1, 0x7f0202c4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 230
    :pswitch_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x7f0202b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 207
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 186
    :pswitch_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->onPlayButtonClick()V

    .line 189
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->currentRequest:Lcom/vkcoffee/android/data/GameRequest;

    invoke-static {v1, v2}, Lcom/vkcoffee/android/data/Games;->hideRequestAll(Landroid/content/Context;Lcom/vkcoffee/android/data/GameRequest;)V

    goto :goto_0

    .line 192
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 193
    .local v0, "uid":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 194
    new-instance v1, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    goto :goto_0

    .line 198
    .end local v0    # "uid":Ljava/lang/Integer;
    :pswitch_4
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->currentRequest:Lcom/vkcoffee/android/data/GameRequest;

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->visitSource:Ljava/lang/String;

    const-string/jumbo v3, "request"

    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->currentRequest:Lcom/vkcoffee/android/data/GameRequest;

    iget v4, v4, Lcom/vkcoffee/android/data/GameRequest;->appId:I

    invoke-static {v1, v2, v3, v4}, Lcom/vkcoffee/android/GameCardActivity;->openApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->currentRequest:Lcom/vkcoffee/android/data/GameRequest;

    invoke-static {v1, v2}, Lcom/vkcoffee/android/data/Games;->hideRequest(Landroid/content/Context;Lcom/vkcoffee/android/data/GameRequest;)V

    goto :goto_0

    .line 204
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->currentRequest:Lcom/vkcoffee/android/data/GameRequest;

    invoke-static {v1, v2}, Lcom/vkcoffee/android/data/Games;->hideRequest(Landroid/content/Context;Lcom/vkcoffee/android/data/GameRequest;)V

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x7f100135
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onPlayButtonClick()V
    .locals 6

    .prologue
    .line 176
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->currentRequest:Lcom/vkcoffee/android/data/GameRequest;

    iget-object v0, v0, Lcom/vkcoffee/android/data/GameRequest;->appPackage:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->currentRequest:Lcom/vkcoffee/android/data/GameRequest;

    iget v3, v3, Lcom/vkcoffee/android/data/GameRequest;->appId:I

    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->visitSource:Ljava/lang/String;

    const-string/jumbo v5, "request"

    invoke-static/range {v0 .. v5}, Lcom/vkcoffee/android/data/Games;->open(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 211
    packed-switch p1, :pswitch_data_0

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 213
    :pswitch_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 216
    :pswitch_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
