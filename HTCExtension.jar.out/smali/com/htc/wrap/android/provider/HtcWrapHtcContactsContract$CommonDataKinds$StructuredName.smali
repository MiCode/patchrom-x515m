.class public final Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$CommonDataKinds$StructuredName;
.super Ljava/lang/Object;
.source "HtcWrapHtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StructuredName"
.end annotation


# static fields
.field public static final CONTENT_LOOKUP_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1049
    sget-object v0, Landroid/provider/HtcContactsContract$CommonDataKinds$StructuredName;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$CommonDataKinds$StructuredName;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1047
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
