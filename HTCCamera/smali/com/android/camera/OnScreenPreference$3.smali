.class Lcom/android/camera/OnScreenPreference$3;
.super Ljava/lang/Object;
.source "OnScreenPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/OnScreenPreference;->show_gps_dialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/OnScreenPreference;


# direct methods
.method constructor <init>(Lcom/android/camera/OnScreenPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/android/camera/OnScreenPreference$3;->this$0:Lcom/android/camera/OnScreenPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 1158
    return-void
.end method
