.class Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$DropDownListView;
.super Lme/grishka/appkit/views/UsableRecyclerView;
.source "MessagesSearchSuggestionsPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropDownListView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$DropDownListView;->this$0:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    .line 291
    invoke-direct {p0, p2}, Lme/grishka/appkit/views/UsableRecyclerView;-><init>(Landroid/content/Context;)V

    .line 292
    return-void
.end method


# virtual methods
.method public hasFocus()Z
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x1

    return v0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x1

    return v0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x1

    return v0
.end method
