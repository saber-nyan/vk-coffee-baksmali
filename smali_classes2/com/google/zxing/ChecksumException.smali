.class public final Lcom/google/zxing/ChecksumException;
.super Lcom/google/zxing/ReaderException;
.source "ChecksumException.java"


# static fields
.field private static final instance:Lcom/google/zxing/ChecksumException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/google/zxing/ChecksumException;

    invoke-direct {v0}, Lcom/google/zxing/ChecksumException;-><init>()V

    sput-object v0, Lcom/google/zxing/ChecksumException;->instance:Lcom/google/zxing/ChecksumException;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/zxing/ReaderException;-><init>()V

    .line 31
    return-void
.end method

.method public static getChecksumInstance()Lcom/google/zxing/ChecksumException;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/zxing/ChecksumException;->instance:Lcom/google/zxing/ChecksumException;

    return-object v0
.end method
