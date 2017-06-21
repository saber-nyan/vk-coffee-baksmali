.class Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$2;
.super Ljava/lang/Object;
.source "MarketFilterPriceFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field beforeText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;)V
    .locals 1
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$2;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$2;->beforeText:Ljava/lang/CharSequence;

    return-void
.end method

.method private isValidInt(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 91
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 92
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .local v0, "buf":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-le v0, v2, :cond_1

    .line 93
    :cond_0
    const/4 v2, 0x0

    .line 96
    .end local v0    # "buf":C
    :goto_1
    return v2

    .line 91
    .restart local v0    # "buf":C
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 96
    .end local v0    # "buf":C
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$2;->isValidInt(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$2;->beforeText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$2;->isValidInt(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$2;->beforeText:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 87
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 74
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$2;->beforeText:Ljava/lang/CharSequence;

    .line 75
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 79
    return-void
.end method
