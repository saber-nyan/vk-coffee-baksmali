.class Lcom/vkcoffee/android/fragments/WikiViewFragment$2;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "WikiViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/WikiViewFragment;->loadNote(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/pages/NotesGetById$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/WikiViewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$2;->this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;

    .line 258
    invoke-direct {p0}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/api/pages/NotesGetById$Result;)V
    .locals 2
    .param p1, "res"    # Lcom/vkcoffee/android/api/pages/NotesGetById$Result;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$2;->this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;

    iget-object v1, p1, Lcom/vkcoffee/android/api/pages/NotesGetById$Result;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->access$7(Lcom/vkcoffee/android/fragments/WikiViewFragment;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$2;->this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;

    iget-object v1, p1, Lcom/vkcoffee/android/api/pages/NotesGetById$Result;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->access$8(Lcom/vkcoffee/android/fragments/WikiViewFragment;Ljava/lang/CharSequence;)V

    .line 262
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/pages/NotesGetById$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/WikiViewFragment$2;->success(Lcom/vkcoffee/android/api/pages/NotesGetById$Result;)V

    return-void
.end method
