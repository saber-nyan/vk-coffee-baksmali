.class Lorg/mp4parser/aspectj/runtime/reflect/JoinPointImpl$EnclosingStaticPartImpl;
.super Lorg/mp4parser/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;
.source "JoinPointImpl.java"

# interfaces
.implements Lorg/mp4parser/aspectj/lang/JoinPoint$EnclosingStaticPart;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mp4parser/aspectj/runtime/reflect/JoinPointImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EnclosingStaticPartImpl"
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;Lorg/mp4parser/aspectj/lang/reflect/SourceLocation;)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "kind"    # Ljava/lang/String;
    .param p3, "signature"    # Lorg/mp4parser/aspectj/lang/Signature;
    .param p4, "sourceLocation"    # Lorg/mp4parser/aspectj/lang/reflect/SourceLocation;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mp4parser/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;-><init>(ILjava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;Lorg/mp4parser/aspectj/lang/reflect/SourceLocation;)V

    .line 77
    return-void
.end method
