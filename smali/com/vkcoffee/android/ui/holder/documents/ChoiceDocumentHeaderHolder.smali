.class public Lcom/vkcoffee/android/ui/holder/documents/ChoiceDocumentHeaderHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "ChoiceDocumentHeaderHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field fragment:Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "v"    # Landroid/view/ViewGroup;

    .prologue
    .line 15
    const v0, 0x7f03005f

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 16
    const v0, 0x7f1001c2

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/documents/ChoiceDocumentHeaderHolder;->$(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    const v0, 0x7f1001c3

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/documents/ChoiceDocumentHeaderHolder;->$(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;)V
    .locals 0
    .param p1, "item"    # Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/documents/ChoiceDocumentHeaderHolder;->fragment:Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;

    .line 23
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/documents/ChoiceDocumentHeaderHolder;->bind(Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 35
    :goto_0
    return-void

    .line 29
    :pswitch_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/documents/ChoiceDocumentHeaderHolder;->fragment:Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;->choiceDocFromGallery()V

    goto :goto_0

    .line 32
    :pswitch_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/documents/ChoiceDocumentHeaderHolder;->fragment:Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;->choiceDocFromStorage()V

    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0x7f1001c2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
