.class public Lcom/vkcoffee/android/upload/BadUploadServerException;
.super Lcom/vkcoffee/android/upload/UploadException;
.source "BadUploadServerException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/vkcoffee/android/upload/UploadException;-><init>()V

    .line 6
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/Throwable;)V

    .line 18
    return-void
.end method
