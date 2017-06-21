.class public Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "GameAppHolder.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder$GetterData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/data/ApiApplication;",
        ">;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final bubble:Landroid/view/View;

.field private final getterData:Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder$GetterData;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final icon:Landroid/widget/ImageView;

.field private lastApp:Lcom/vkcoffee/android/data/ApiApplication;

.field private final subtitle:Landroid/widget/TextView;

.field private final title:Landroid/widget/TextView;

.field private final visitSource:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder$GetterData;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "getterData"    # Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder$GetterData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "visitSource"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    const v0, 0x7f0300b4

    invoke-direct {p0, v0, p2}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/content/Context;)V

    .line 42
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;->getterData:Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder$GetterData;

    .line 43
    iput-object p3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;->visitSource:Ljava/lang/String;

    .line 45
    const v0, 0x7f100007

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;->icon:Landroid/widget/ImageView;

    .line 46
    const v0, 0x7f100009

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;->title:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f100008

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;->subtitle:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f100006

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;->$(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;->bubble:Landroid/view/View;

    .line 49
    return-void
.end method

.method public static getIconUrl(Lcom/vkcoffee/android/data/ApiApplication;)Ljava/lang/String;
    .locals 3
    .param p0, "item"    # Lcom/vkcoffee/android/data/ApiApplication;

    .prologue
    .line 66
    iget-object v1, p0, Lcom/vkcoffee/android/data/ApiApplication;->icons:[Ljava/lang/String;

    sget v0, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    aget-object v0, v1, v0

    return-object v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/data/ApiApplication;)V
    .locals 3
    .param p1, "item"    # Lcom/vkcoffee/android/data/ApiApplication;

    .prologue
    const/16 v2, 0x8

    .line 53
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;->lastApp:Lcom/vkcoffee/android/data/ApiApplication;

    .line 54
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;->title:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/data/ApiApplication;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;->subtitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/data/ApiApplication;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-boolean v0, p1, Lcom/vkcoffee/android/data/ApiApplication;->isNew:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;->bubble:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;->bubble:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;->icon:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;->getIconUrl(Lcom/vkcoffee/android/data/ApiApplication;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0202ba

    invoke-virtual {p0, v0, v1, v2}, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 63
    return-void

    .line 58
    :cond_1
    iget-boolean v0, p1, Lcom/vkcoffee/android/data/ApiApplication;->isNew:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;->bubble:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 59
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;->bubble:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/vkcoffee/android/data/ApiApplication;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;->bind(Lcom/vkcoffee/android/data/ApiApplication;)V

    return-void
.end method

.method public clearImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x7f0202ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    return-void
.end method

.method public onClick()V
    .locals 5

    .prologue
    .line 87
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;->getterData:Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder$GetterData;

    invoke-interface {v1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder$GetterData;->getApiApplications()Ljava/util/ArrayList;

    move-result-object v0

    .line 88
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/ApiApplication;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;->visitSource:Ljava/lang/String;

    const-string/jumbo v3, "catalog"

    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;->lastApp:Lcom/vkcoffee/android/data/ApiApplication;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v1, v2, v3, v0, v4}, Lcom/vkcoffee/android/GameCardActivity;->openApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 89
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;->onClick()V

    .line 83
    return-void
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 72
    return-void
.end method
