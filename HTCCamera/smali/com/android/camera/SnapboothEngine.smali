.class public Lcom/android/camera/SnapboothEngine;
.super Ljava/lang/Object;
.source "SnapboothEngine.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    const-string v0, "SnapboothNative"

    const-string v1, "Load+"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const-string v0, "htcsnapbooth"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    const-string v0, "SnapboothNative"

    const-string v1, "Load-"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native AllocateBitmap(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.end method
