.class Landroid/webkit/EditableWebView$EditableQuickActions$4;
.super Ljava/lang/Object;
.source "EditableWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogFontStyle(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/EditableWebView$EditableQuickActions;


# direct methods
.method constructor <init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V
    .locals 0
    .parameter

    .prologue
    .line 2009
    iput-object p1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$4;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2012
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$4;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->dialog_font_style:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 2014
    packed-switch p2, :pswitch_data_0

    .line 2034
    :goto_0
    return-void

    .line 2016
    :pswitch_0
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$4;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$4;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    #calls: Landroid/webkit/EditableWebView$EditableQuickActions;->getDialogFontStyleContext()Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$3400(Landroid/webkit/EditableWebView$EditableQuickActions;)Landroid/content/Context;

    move-result-object v1

    #calls: Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogFontsize(Landroid/content/Context;)V
    invoke-static {v0, v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$3600(Landroid/webkit/EditableWebView$EditableQuickActions;Landroid/content/Context;)V

    .line 2017
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$4;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->dialog_font_style_fontsize:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    goto :goto_0

    .line 2020
    :pswitch_1
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$4;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$4;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    #calls: Landroid/webkit/EditableWebView$EditableQuickActions;->getDialogFontStyleContext()Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$3400(Landroid/webkit/EditableWebView$EditableQuickActions;)Landroid/content/Context;

    move-result-object v1

    #calls: Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogFontcolor(Landroid/content/Context;)V
    invoke-static {v0, v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$3700(Landroid/webkit/EditableWebView$EditableQuickActions;Landroid/content/Context;)V

    .line 2021
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$4;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->dialog_font_style_fontcolor:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    goto :goto_0

    .line 2024
    :pswitch_2
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$4;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$4;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    #calls: Landroid/webkit/EditableWebView$EditableQuickActions;->getDialogFontStyleContext()Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$3400(Landroid/webkit/EditableWebView$EditableQuickActions;)Landroid/content/Context;

    move-result-object v1

    #calls: Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogSettings(Landroid/content/Context;)V
    invoke-static {v0, v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$3800(Landroid/webkit/EditableWebView$EditableQuickActions;Landroid/content/Context;)V

    .line 2025
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$4;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->dialog_font_style_settings:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    goto :goto_0

    .line 2028
    :pswitch_3
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$4;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$4;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    #calls: Landroid/webkit/EditableWebView$EditableQuickActions;->getDialogFontStyleContext()Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$3400(Landroid/webkit/EditableWebView$EditableQuickActions;)Landroid/content/Context;

    move-result-object v1

    #calls: Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogAlignment(Landroid/content/Context;)V
    invoke-static {v0, v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$3900(Landroid/webkit/EditableWebView$EditableQuickActions;Landroid/content/Context;)V

    .line 2029
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$4;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->dialog_font_style_alignment:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    goto :goto_0

    .line 2014
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
