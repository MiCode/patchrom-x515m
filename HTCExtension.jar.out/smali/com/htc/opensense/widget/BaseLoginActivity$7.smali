.class Lcom/htc/opensense/widget/BaseLoginActivity$7;
.super Ljava/lang/Object;
.source "BaseLoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/widget/BaseLoginActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/widget/BaseLoginActivity;


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/BaseLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/htc/opensense/widget/BaseLoginActivity$7;->this$0:Lcom/htc/opensense/widget/BaseLoginActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 350
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/opensense/widget/BaseLoginActivity$7;->this$0:Lcom/htc/opensense/widget/BaseLoginActivity;

    invoke-virtual {v1, v0}, Lcom/htc/opensense/widget/BaseLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 353
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 354
    return-void
.end method
