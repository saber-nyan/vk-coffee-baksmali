.class Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$HistoryEntry;
.super Ljava/lang/Object;
.source "FilePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryEntry"
.end annotation


# instance fields
.field dir:Ljava/io/File;

.field scrollItem:I

.field scrollOffset:I

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

.field title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$HistoryEntry;->this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;
    .param p2, "x1"    # Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$1;

    .prologue
    .line 449
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$HistoryEntry;-><init>(Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;)V

    return-void
.end method
