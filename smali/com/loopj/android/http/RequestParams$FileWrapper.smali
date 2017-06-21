.class public Lcom/loopj/android/http/RequestParams$FileWrapper;
.super Ljava/lang/Object;
.source "RequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopj/android/http/RequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileWrapper"
.end annotation


# instance fields
.field public final contentType:Ljava/lang/String;

.field public final customFileName:Ljava/lang/String;

.field public final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "customFileName"    # Ljava/lang/String;

    .prologue
    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    iput-object p1, p0, Lcom/loopj/android/http/RequestParams$FileWrapper;->file:Ljava/io/File;

    .line 593
    iput-object p2, p0, Lcom/loopj/android/http/RequestParams$FileWrapper;->contentType:Ljava/lang/String;

    .line 594
    iput-object p3, p0, Lcom/loopj/android/http/RequestParams$FileWrapper;->customFileName:Ljava/lang/String;

    .line 595
    return-void
.end method
