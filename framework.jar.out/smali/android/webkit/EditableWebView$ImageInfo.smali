.class public Landroid/webkit/EditableWebView$ImageInfo;
.super Ljava/lang/Object;
.source "EditableWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/EditableWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageInfo"
.end annotation


# instance fields
.field public m_height:I

.field public m_src:Ljava/lang/String;

.field public m_width:I

.field final synthetic this$0:Landroid/webkit/EditableWebView;


# direct methods
.method constructor <init>(Landroid/webkit/EditableWebView;Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter "src"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1404
    iput-object p1, p0, Landroid/webkit/EditableWebView$ImageInfo;->this$0:Landroid/webkit/EditableWebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1405
    iput-object p2, p0, Landroid/webkit/EditableWebView$ImageInfo;->m_src:Ljava/lang/String;

    .line 1406
    iput p3, p0, Landroid/webkit/EditableWebView$ImageInfo;->m_width:I

    .line 1407
    iput p4, p0, Landroid/webkit/EditableWebView$ImageInfo;->m_height:I

    .line 1408
    return-void
.end method
