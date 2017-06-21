.class Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$2;
.super Ljava/lang/Object;
.source "AutoSuggestStickersPopupWindow.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;-><init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private previousText:Ljava/lang/String;

.field final synthetic this$0:Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;)V
    .locals 1
    .param p1, "this$0"    # Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$2;->this$0:Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$2;->previousText:Ljava/lang/String;

    return-void
.end method

.method private areStringsDifferWithOneCharOnly(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 125
    invoke-direct {p0, p2, p1}, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$2;->areStringsDifferWithOneCharOnly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 147
    :cond_0
    :goto_0
    return v2

    .line 128
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    if-ne v4, v3, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "haveDiff":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 134
    if-nez v0, :cond_2

    .line 135
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2

    .line 136
    const/4 v0, 0x1

    .line 140
    :cond_2
    if-eqz v0, :cond_3

    .line 141
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    .line 133
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v2, v3

    .line 147
    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 103
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const/16 v2, 0x28

    if-gt v1, v2, :cond_1

    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "keyString":Ljava/lang/String;
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$2;->previousText:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$2;->areStringsDifferWithOneCharOnly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$2;->this$0:Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;

    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/stickers/Stickers;->getAutoSuggestStickersFor(Ljava/lang/String;)Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->showHidePopupWindow(Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;)V

    .line 119
    .end local v0    # "keyString":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$2;->previousText:Ljava/lang/String;

    .line 120
    return-void

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$2;->this$0:Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->showHidePopupWindow(Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 94
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 98
    return-void
.end method
