.class Lcom/android/camera/OnScreenPreference$2;
.super Ljava/lang/Object;
.source "OnScreenPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 1147
    iput-object p1, p0, Lcom/android/camera/OnScreenPreference$2;->this$0:Lcom/android/camera/OnScreenPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference$2;->this$0:Lcom/android/camera/OnScreenPreference;

    #calls: Lcom/android/camera/OnScreenPreference;->closeDialog()V
    invoke-static {v0}, Lcom/android/camera/OnScreenPreference;->access$300(Lcom/android/camera/OnScreenPreference;)V

    .line 1151
    return-void
.end method
