
view  product_show

<body>
    <div class="show_body">
        <div class="col-lg-3">
            <div class="image_show">
                <%= attachment_image_tag @product, :cd_image, :fill, 300, 300 %>
            </div>
            <% if admin_signed_in? %>
                <div class="product_ad_sow">
                    <table>
                        <tr>
                        <th>
                            <button type="button" style="font-size: 15px; margin: 0 20px 5px 0;  padding: 0px; border: 0px; font-weight: lighter;" ><%=link_to "編集画面へ", edit_admins_product_path(@product.id) , class: "btn btn-success" %></button><br>
                        </th>
                        <td>
                            <button type="button" class="btn btn-danger" style="margin-bottom: 5px;padding: 0px;border: 0px;"><%=link_to "商品を削除する", admins_product_path(@product.id), method: :delete, data: {confirm: "本当に削除しますか？"} , class: "btn btn-danger" %></button><br>
                        </td>
                        </tr>
                    </table>
                </div>
            <% end %>
        </div>
        <div cladss="row">
            <div class="col-lg-9">
                <table class="show_table" style="overflow-y:scroll;">
                    <tr>
                        <th class="show_title">
                            <h4>アルバム・シングル名：</h4>
                        </th>
                        <td>
                            <div class="show_cont"><%= @product.cd_name %></div>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <h4>アーティスト：</h4>
                        </th>
                        <td>
                            <div class="show_cont"><%= @product.artist_name %></div>
                        </td>
                        <% @product.artist_name_kana %>
                            <% @product.artist_name_eng %>
                    </tr>
                    <tr>
                        <th>
                            <h4>レーベル：</h4>
                        </th>
                        <td>
                            <div class="show_cont"><%= @product.label_name %>
                        </td>
                            <% @product.label_name_kana %>
                            <% @product.label_name_eng %>
                    </tr>
                    <tr>
                        <th>
                            <h4>ジャンル：</h4>
                        </th>
                        <td class="show_coco">
                            <%= @product.category %>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <h4>在庫数：</h4>
                        </th>
                        <td class="show_coco">
                        <% zaiko = @product.quantity %>
                        <% if zaiko == 0 then %>
                        在庫がありません。
                        <% else %>
                        在庫が<%= zaiko %>個あります。
                        <% end %>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <h4>価格：</h4>
                        </th>
                        <td class="show_coco">
                          ￥&emsp;<%= @product.price %>
                        </td>
                    </tr>
                </table>
            </div>
            <% if user_signed_in? %>
                <div class="col-lg-3" style="width: 210px;">
                    <button type="button" class="btn btn-warning" style="font-size: 15px; margin-bottom: 5px; margin-top: 17px; padding: 0px; border: 0px;" >
                      <%=link_to "カートに入れる", product_product_carts_path(@product.id), method: :post , class: "btn btn-warning" %></button><br>
                </div>
            <% end %>
        </div>
    </div>¥
    <table class="disc_ds">
      <% @discs.discs.each do |disc| %>
        <div class="disc_div">
              <tr>
                  <th>
                      <% disc.disc_number %>
                  </th>
                  <td>
                      <h4 class="disc_n"><%= disc.disc_name %></h4><br>
                  </td>
              </tr>
              <div class="disc_s">
                  <% disc.songs.each do |song| %>
                  <tr style="font-size: 17px;">
                      <th>
                          <%= song.song_number %>&emsp;
                      </th>
                      <td>
                          <div class="disc_s"><%= song.song_title %></div>
                      </td>
                  </tr>
                   <% end %>
              </div>
        </div>
      <% end %>
    </table>
</body>


